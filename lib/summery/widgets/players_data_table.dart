import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:material_table_view/material_table_view.dart';
import 'package:repllay_app/core/core.dart';
import 'package:repllay_app/summery/summery.dart';

class PlayersDataTable extends HookWidget {
  const PlayersDataTable({required this.playerData, super.key});
  final List<PlayerData> playerData;
  @override
  Widget build(BuildContext context) {
    return TableView.builder(
      headerHeight: 40,
      headerBuilder: (context, contentBuilder) => contentBuilder(
        context,
        (context, index) {
          return Center(
            child: Builder(
              builder: (_) {
                switch (index) {
                  case 0:
                    return const Text('Player');
                  case 1:
                    return const Text('Level');
                  case 2:
                    return const Text('Anonymous');
                  case 3:
                    return const Text('Platform');
                  default:
                    return const SizedBox.shrink();
                }
              },
            ),
          );
        },
      ),
      columns: List.generate(4, (index) => const TableColumn(width: 300)),
      rowCount: playerData.length,
      rowHeight: 50,
      rowBuilder: (context, row, contentBuilder) {
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (_) => WebView(
                  url:
                      'https://fortnitetracker.com/profile/all/${playerData[row].epicId}',
                ),
              ),
            );
          },
          child: contentBuilder(
            context,
            (context, column) {
              final player = playerData[row];
              final isBot = playerData[row].isBot ?? false;
              final playerName =
                  '${player.playerName ?? player.epicId}${isBot ? ' (Bot)' : ''}';
              return Center(
                child: Builder(
                  builder: (_) {
                    switch (column) {
                      case 0:
                        return Text(playerName);
                      case 1:
                        return Text(
                          playerData[row].level?.toInt().toString() ?? '',
                        );
                      case 2:
                        return Text(
                          playerData[row].isUsingAnonymousMode ?? false == true
                              ? 'Yes'
                              : 'No',
                        );
                      case 3:
                        return Text(
                          playerData[row].platform?.toString() ?? '-',
                        );
                      case 4:
                      default:
                        return const SizedBox.shrink();
                    }
                  },
                ),
              );
            },
          ),
        );
      },
      // specify other parameters for other features
    );
    // return InteractiveViewer(
    //   scaleEnabled: false,
    //   child: Scrollbar(
    //     controller: scrollController,
    //     child: SingleChildScrollView(
    //       controller: scrollController,
    //       child: DataTable(
    //         columns: const <DataColumn>[
    //           DataColumn(
    //             label: Text('Player'),
    //           ),
    //           DataColumn(
    //             label: Text('Level'),
    //           ),
    //           DataColumn(
    //             label: Text('Anonymous'),
    //           ),
    //           DataColumn(
    //             label: Text('Platfrom'),
    //           ),
    //         ],
    //         rows: playerData.map(
    //           (e) {
    //             final isBot = e.isBot ?? false;
    //             final playerName = '${e.playerName}${isBot ? ' (Bot)' : ''}';
    //             return DataRow(
    //               cells: <DataCell>[
    //                 DataCell(
    //                   Text(
    //                     playerName,
    //                   ),
    //                 ),
    //                 DataCell(
    //                   Text(e.level?.toInt().toString() ?? ''),
    //                 ),
    //                 DataCell(
    //                   Text(
    //                     e.isUsingAnonymousMode ?? false == true ? 'Yes' : 'No',
    //                   ),
    //                 ),
    //                 DataCell(
    //                   Text(
    //                     e.platform?.toString() ?? '-',
    //                     textAlign: TextAlign.center,
    //                   ),
    //                 ),
    //               ],
    //             );
    //           },
    //         ).toList(),
    //       ),
    //     ),
    //   ),
    // );
    // return PlutoGrid(
    //   configuration: PlutoGridConfiguration(
    //     style: PlutoGridStyleConfig.dark(),
    //   ),
    //   mode: PlutoGridMode.readOnly,
    //   columns: [
    //     PlutoColumn(
    //       type: PlutoColumnType.text(),
    //       title: 'Player',
    //       field: 'playerName',
    //       width: 100,
    //     ),
    //   ],
    //   rows: playerData
    //       .map(
    //         (e) => PlutoRow(
    //           cells: {
    //             'playerName': PlutoCell(value: e.playerName),
    //           },
    //         ),
    //       )
    //       .toList(),
    // );
  }
}
