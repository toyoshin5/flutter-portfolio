import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cook_path_notifier.g.dart';

@riverpod
class CookPathNotifier extends _$CookPathNotifier {
  @override
  Future<List<String>> build() async {
    // >> To get paths you need these 2 lines
      final manifestContent = await rootBundle.loadString('AssetManifest.json');
      final Map<String, dynamic> manifestMap = json.decode(manifestContent);
      // >> To get paths you need these 2 lines
      final imagePaths = manifestMap.keys
          .where((String key) => key.contains('images/cook/'))
          .where((String key) => key.contains('.jpg') || key.contains('.jpeg'))
          .toList();
      return imagePaths;
  }
}
