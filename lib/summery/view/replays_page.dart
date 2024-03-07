import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:repllay_app/summery/summery.dart';

class ReplaysPage extends ConsumerStatefulWidget {
  const ReplaysPage({super.key});

  @override
  ConsumerState<ReplaysPage> createState() => _ReplaysPageState();
}

class _ReplaysPageState extends ConsumerState<ReplaysPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          _ProgressBar(),
          Expanded(child: ReplayList()),
        ],
      ),
    );
  }
}

class _ProgressBar extends ConsumerWidget {
  const _ProgressBar();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final replayParser = ref.watch(replayParserProvider);
    final total = replayParser.total;
    final parsed = replayParser.completed;
    final failed = replayParser.failed;
    final isFinished = parsed == total;
    final textBuffer = StringBuffer('$parsed of $total');
    if (failed > 0) {
      textBuffer.write(' - $failed failed');
    }
    final text = textBuffer.toString();
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: isFinished
          ? const SizedBox.shrink()
          : Stack(
              alignment: Alignment.center,
              children: [
                LinearProgressIndicator(
                  value: replayParser.progress,
                  minHeight: 35,
                ),
                Text(
                  text,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                ),
              ],
            ),
    );
  }
}

class ReplayList extends ConsumerWidget {
  const ReplayList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final replayFiles = ref.watch(replayFilesProvider);
    final files = replayFiles.getReplays();

    final myNotifier = ref.watch(replayParserProvider);

    return ListView.separated(
      separatorBuilder: (context, index) => const Divider(),
      itemCount: files.length,
      itemBuilder: (context, index) {
        final file = files[index];
        final hasParsedReplay = replayFiles.hasParsedReplay(file.path);
        final status = myNotifier.getParseStatus(file.path) ??
            (hasParsedReplay ? ParseStatus.parsed : null);
        return _Tile(
          file: file,
          status: status,
        );
      },
    );
  }
}

class _Tile extends ConsumerWidget {
  const _Tile({
    required this.file,
    this.status,
  });
  final FileSystemEntity file;
  final ParseStatus? status;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stat = file.statSync();
    final dateFormat = DateFormat('yyyy-MM-dd HH:mm:ss');
    final date = stat.changed;
    final formattedDate = dateFormat.format(date);
    return ListTile(
      title: Text(file.path.split(r'\').last.split('.replay').first),
      subtitle: Text(formattedDate),
      trailing: Builder(
        builder: (_) {
          switch (status) {
            case ParseStatus.parsing:
              return const CircularProgressIndicator();
            case ParseStatus.parsed:
              return const Icon(Icons.check, color: Colors.green);
            case ParseStatus.failed:
              return const Icon(Icons.error, color: Colors.red);
            case null:
              return const SizedBox();
          }
        },
      ),
      onTap: () async {
        if (status == ParseStatus.parsed) {
          await Navigator.of(context).push(
            SummeryPage.route(file.path),
          );
          return;
        }
        if (status == ParseStatus.failed || status == null) {
          await ref.read(replayParserProvider).addOperations(
            [file.path],
          );
          return;
        }
      },
    );
  }
}
