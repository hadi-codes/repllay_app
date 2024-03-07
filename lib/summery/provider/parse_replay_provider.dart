import 'dart:async';
import 'dart:io';

import 'package:concurrent_queue/concurrent_queue.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart';
import 'package:process_run/process_run.dart';

// part 'parse_replay_provider.g.dart';
enum ParseStatus { parsing, parsed, failed }

typedef ParsedReplay = Map<String, dynamic>;

class ReplayParser extends ChangeNotifier {
  ReplayParser() {
    _queue.eventStream.listen((event) {
      if (event.action == QueueEventAction.add) {
        _total++;
      }

      notifyListeners();
    });
    _queue.start();
  }
  final ConcurrentQueue _queue = ConcurrentQueue(concurrency: 2);
  int _total = 0;
  final Map<String, bool> _active = {};
  final List<String> _completed = [];

  final Map<String, bool> _error = {};

  double get progress {
    if (_total == 0) {
      return 0;
    }
    final completed = _completed.length;
    return (completed / _total).clamp(0, 1);
  }

  int get total => _total;
  int get completed => _completed.length;
  int get failed => _error.length;

  Future<void> addOperations(List<String> paths) async {
    for (final path in paths) {
      await _queue.add(
        () => _decodeReplay(path),
        key: path,
      );
    }
  }

  Future<void> retryOperation(String path) async {
    if (_error[path] ?? false) {
      await _queue.add(
        () => _decodeReplay(path),
        key: path,
      );
    }
  }

  bool isParsingReplay(String path) {
    return _active[path] ?? false;
  }

  ParseStatus? getParseStatus(String path) {
    final error = _error[path] ?? false;
    if (error) {
      return ParseStatus.failed;
    }
    if (_completed.contains(path)) {
      return ParseStatus.parsed;
    }
    final active = _active[path] ?? false;
    if (active) {
      return ParseStatus.parsing;
    }
    return null;
  }

  Future<String> _getDecoderPath() async {
    final directory = Directory.current;
    final path = kDebugMode
        ? join(directory.path, r'assets\bin\FortniteReplayParser.exe')
        : join(directory.path, r'data\assets\bin\FortniteReplayParser.exe');

    return path;
  }

  Future<void> _decodeReplay(String path) async {
    final title =
        path.split(Platform.pathSeparator).last.split('.replay').first;
    _active[path] = true;
    notifyListeners();

    final decoderPath = await _getDecoderPath();
    final directory = Directory.current;
    final output = join(directory.path, 'data', '$title.json');

    try {
      final shell = Shell();

      await shell.run('$decoderPath $path $output');
      _active[path] = false;
      _error.remove(path);
      _completed.add(path);
    } catch (e) {
      _error[path] = true;
    }
    notifyListeners();
  }
}

final replayParserProvider = ChangeNotifierProvider<ReplayParser>((ref) {
  return ReplayParser();
});
