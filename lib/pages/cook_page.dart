import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/notifier/cook_path_notifier.dart';
import 'package:flutter_portfolio/screen_pod.dart';
import 'package:flutter_portfolio/styles/app_colors.dart';
import 'package:flutter_portfolio/widget/gallary_photo_view_wrapper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loadingIndexProvider = StateProvider<int?>((ref) => null);
class CookPage extends ConsumerWidget {
  const CookPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(cookPathNotifierProvider);
    final screenCls = ScreenRef(context).watch(screenProvider).sizeClass;
    return asyncValue.when(
      data: (data) => _buildContent(context, data, screenCls, ref),
      loading: () => const Center(child: CupertinoActivityIndicator()),
      error: (error, stack) => Center(child: Text('エラーが発生しました: $error')),
    );
  }

  Widget _buildContent(
      BuildContext context, List<String> data, ScreenSizeClass screenCls, WidgetRef ref) {
    return Material(
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Cooking',
              style: TextStyle(color: AppColors.label(context))),
          backgroundColor: AppColors.backGround(context),
        ),
        child: SafeArea(
          child: Center(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 768),
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              child: GridView.count(
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                crossAxisCount: (screenCls == ScreenSizeClass.phone) ? 3 : 4,
                children: List.generate(data.length, (index) {
                  return Hero(
                    tag: data[index],
                    child: GestureDetector(
                      onTap: () {
                        precacheImage(AssetImage(data[index]), context).then((value) {
                          ref.read(loadingIndexProvider.notifier).state = null;
                          openGallery(context, data, index);
                        });
                        ref.read(loadingIndexProvider.notifier).state = index;
                      },
                      child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                  image: AssetImage(
                                      data[index].replaceAll("cook", "s_cook")),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            if (ref.watch(loadingIndexProvider) == index) ...[
                              const Center(
                                child: CircularProgressIndicator(),
                              ),
                            ],
                          ],
                        ),
                    ),
                  );
                }),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void openGallery(BuildContext context, List<String> data, int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => GalleryPhotoViewWrapper(
          galleryItems: List.generate(
            data.length,
            (index) => data[index],
          ),
          initialIndex: index,
        ),
      ),
    );
  }
}
