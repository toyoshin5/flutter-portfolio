import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cook_path_notifier.g.dart';

@riverpod
class CookPathNotifier extends _$CookPathNotifier {
  @override
  Future<List<String>> build() async {
      final manifestContent = await rootBundle.loadString('AssetManifest.json');
      final Map<String, dynamic> manifestMap = json.decode(manifestContent);
      final imagePaths = manifestMap.keys
          .where((String key) => key.contains('images/cook/'))
          .where((String key) => key.contains('.jpg') || key.contains('.jpeg'))
          .toList();
      return imagePaths;
  }
}
