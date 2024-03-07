import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:repllay_app/summery/summery.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SummeryPage extends ConsumerWidget {
  const SummeryPage({required this.path, super.key});
  static MaterialPageRoute<void> route(String path) {
    return MaterialPageRoute<void>(
      builder: (_) => SummeryPage(path: path),
    );
  }

  final String path;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final summeryData = ref.watch(summeryDataProvider(path));
    final isLoading = summeryData.isLoading;
    final hasError = summeryData.hasError;
    final data = summeryData.value;
    return Scaffold(
      body: Builder(
        builder: (_) {
          if (isLoading) {
            return const CircularProgressIndicator();
          } else if (hasError) {
            return Text('Error: ${summeryData.error}');
          } else if (data != null) {
            return _Stats(
              summary: data,
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}

class _Stats extends HookWidget {
  const _Stats({required this.summary});
  final ReplaySummary summary;
  @override
  Widget build(BuildContext context) {
    final tabController = useTabController(initialLength: 3);
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Column(
          children: [
            TabBar(
              controller: tabController,
              tabs: const [
                Tab(
                  text: 'Game',
                ),
                Tab(
                  text: 'Kill Feed',
                ),
                Tab(
                  text: 'Players',
                ),
              ],
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          _GameData(gameData: summary.gameData),
          _KillFeed(
            killFeed: summary.killFeed,
            playerDataMap: summary.playerDataMap,
          ),
          _PlayerData(players: summary.playerData ?? []),
        ],
      ),
    );
  }
}

class _GameData extends StatelessWidget {
  const _GameData({this.gameData});
  final GameData? gameData;
  @override
  Widget build(BuildContext context) {
    if (gameData == null) return const SizedBox.shrink();
    final data = gameData!;
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            title: const Text('Game Mode'),
            subtitle: Text(data.currentPlaylistName),
          ),
        ],
      ),
    );
  }
}

class _KillFeed extends StatelessWidget {
  const _KillFeed({required this.killFeed, required this.playerDataMap});
  final List<KillFeedEntry> killFeed;
  final Map<String, PlayerData> playerDataMap;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final textStyle = Theme.of(context).textTheme.bodyLarge;
        final color = Theme.of(context).colorScheme.onSurface;
        final item = killFeed[index];
        final killer = playerDataMap[item.finisherOrDownerName];
        final victim = playerDataMap[item.playerName];
        if (killer == null || victim == null) {
          return const SizedBox.shrink();
        }
        final isDowned = item.isDowned ?? false;

        return ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 3,
                child: Text(
                  killer.playerName ?? '',
                  style: textStyle?.copyWith(color: color),
                ),
              ),
              Expanded(
                child: isDowned
                    ? const Icon(Icons.arrow_downward)
                    : const Icon(Icons.close),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  victim.playerName ?? '',
                  style: textStyle?.copyWith(color: color),
                  textAlign: TextAlign.end,
                ),
              ),
            ],
          ),
          onTap: () {
            Clipboard.setData(ClipboardData(text: item.toString()));
          },
        );
      },
      itemCount: killFeed.length,
    );
  }
}

class _PlayerData extends StatelessWidget {
  const _PlayerData({required this.players});
  final List<PlayerData> players;
  @override
  Widget build(BuildContext context) {
    final playerData =
        players.where((element) => element.playerId != null).toList()
          ..sort((a, b) {
            final isBotA = a.isBot ?? false;
            final isBotB = b.isBot ?? false;
            if (isBotA && !isBotB) {
              return 1;
            } else if (!isBotA && isBotB) {
              return -1;
            }
            return 0;
          });

    return PlayersDataTable(playerData: playerData);
  }
}
