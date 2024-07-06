import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'license_notifier.g.dart';

@riverpod
class LicensesNotifier extends _$LicensesNotifier {
  @override
  Future<List<LicenseEntry>> build() async {
    return LicenseRegistry.licenses.toList();
  }
}
