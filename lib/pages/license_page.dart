import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/providers/license_notifier.dart';
import 'package:flutter_portfolio/styles/app_colors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppLicensePage extends ConsumerWidget {
  const AppLicensePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final licensesAsyncValue = ref.watch(licensesNotifierProvider);
    final licenseMap = <String, List<LicenseEntry>>{};

    return Material(
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('ライセンス',style: TextStyle(color: AppColors.label(context))),
          backgroundColor: AppColors.backGround(context),
        ),
        child: SafeArea(
          child: licensesAsyncValue.when(
            data: (licenses) {
              for (final entry in licenses) {
                for (final package in entry.packages) {
                  if (licenseMap.containsKey(package)) {
                    licenseMap[package]!.add(entry);
                  } else {
                    licenseMap[package] = [entry];
                  }
                }
              }
              //mapをリストに変換
              final licenseMapList = licenseMap.entries.toList();
              licenseMapList.sort((a, b) => a.key.compareTo(b.key));
              return ListView(
                children: [
                  for (final entry in licenseMapList)...[
                    CupertinoListTile(
                      title: Text(entry.key,style: TextStyle(color: AppColors.label(context))),
                      onTap: () {
                        Navigator.of(context).push(
                          CupertinoPageRoute(
                            builder: (context) => LicenseDetailPage(licenses: entry),
                          ),
                        );
                      },
                    ),
                    const Divider(height: 1,),
                  ],
                ],
              );
            },
            loading: () => const Center(child: CupertinoActivityIndicator()),
            error: (error, stack) => Center(child: Text('エラーが発生しました: $error')),
          ),
        ),
      ),
    );
  }
}

class LicenseDetailPage extends StatelessWidget {
  final MapEntry<String, List<LicenseEntry>> licenses;

  const LicenseDetailPage({super.key, required this.licenses});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text(licenses.key,style: TextStyle(color: AppColors.label(context))),
          backgroundColor: AppColors.backGround(context),
        ),
        child: SafeArea(
          child: ListView(
            // Column をListViewに変更
            padding: const EdgeInsets.all(16.0),
            children: [
              for (final license in licenses.value)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      license.paragraphs.map((p) => p.text).join('\n\n'),
                    ),
                    const Divider(height: 48),// ライセンス間の区切り線
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}

//二次利用の際は以下も含める
// part 'license_notifier.g.dart';

// @riverpod
// class LicensesNotifier extends _$LicensesNotifier {
//   @override
//   Future<List<LicenseEntry>> build() async {
//     return LicenseRegistry.licenses.toList();
//   }
// }
