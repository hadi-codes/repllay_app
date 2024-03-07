import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:watcher/watcher.dart';
import 'package:path/path.dart';

typedef ReplayAndParsedReplay = (
  Map<String, FileSystemEntity>,
  Map<String, FileSystemEntity>
);
const replayDir = r'C:\Users\fam\AppData\Local\FortniteGame\Saved\Demos';
const parsedReplayDir = r'C:\Users\fam\dev\repllay_app\data';

class ReplayFiles extends ChangeNotifier {
  ReplayFiles() {
    _subscription = replayFiles().listen((event) {
      notifyListeners();
    });
  }
  late final StreamSubscription<ReplayAndParsedReplay> _subscription;

  var _replays = <String, FileSystemEntity>{};
  var _parsedReplays = <String, FileSystemEntity>{};

  Stream<ReplayAndParsedReplay> replayFiles() async* {
    final watcher = DirectoryWatcher(replayDir);

    yield _getReplaysAndParsedReplays();

    await for (final _ in watcher.events) {
      yield _getReplaysAndParsedReplays();
    }
  }

  Stream<List<FileSystemEntity>> getNotParsedReplays() async* {
    final replays = replayFiles();
    await for (final entry in replays) {
      final replays = entry.$1;
      final parsedReplays = entry.$2;
      final keys = parsedReplays.keys;
      final notParsed = replays.values.where((element) {
        final replayName = _getReplayName(element.path);
        final path = join(parsedReplayDir, '$replayName.json');
        return !keys.contains(path);
      }).toList();

      yield notParsed;
    }
  }

  bool hasParsedReplay(String replayPath) {
    final replayName =
        replayPath.split(Platform.pathSeparator).last.split('.replay').first;
    final path = join(parsedReplayDir, '$replayName.json');
    return _parsedReplays.containsKey(path);
  }

  List<FileSystemEntity> getReplays() {
    return _replays.values.toList()
      ..sort((a, b) {
        return b.statSync().changed.compareTo(a.statSync().changed);
      });
  }

  FileSystemEntity getParsedReplay(String replayPath) {
    final replayName = _getReplayName(replayPath);
    final path = join(parsedReplayDir, '$replayName.json');
    return _parsedReplays[path]!;
  }

  ReplayAndParsedReplay _getReplaysAndParsedReplays() {
    _replays = _getFiles(replayDir);
    _parsedReplays = _getFiles(parsedReplayDir);
    return (_replays, _parsedReplays);
  }

  Map<String, FileSystemEntity> _getFiles(String dirPath) {
    final dir = Directory(dirPath);
    if (!dir.existsSync()) return {};
    final map = <String, FileSystemEntity>{};
    final files = dir.listSync().whereType<File>().toList();
    for (final file in files) {
      final fileName = file.path;
      map[fileName] = file;
    }
    return map;
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  String _getReplayName(String replayPath) {
    return replayPath.split(Platform.pathSeparator).last.split('.replay').first;
  }
}

final replayFilesProvider = ChangeNotifierProvider<ReplayFiles>((ref) {
  return ReplayFiles();
});
