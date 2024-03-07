import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:path/path.dart';
import 'package:repllay_app/summery/model/replay_summary.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'summery_provider.g.dart';

@riverpod
Future<ReplaySummary> summeryData(
  SummeryDataRef ref,
  String path,
) async {
  final dir = Directory.current;
  final summeryJsonFileName =
      '${path.split(Platform.pathSeparator).last.split('.replay').first}.json';
  final summeryPath = join(dir.path, 'data', summeryJsonFileName);
  final file = File(summeryPath);
  final jsonData = await file.readAsString();
  final result = await compute(_decodeAndParseJson, jsonData);

  return ReplaySummary.fromJson(result);
}

Map<String, dynamic> _decodeAndParseJson(String encodedJson) {
  final jsonData = jsonDecode(encodedJson);
  return jsonData as Map<String, dynamic>;
}
