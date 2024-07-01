
import 'package:flutter/material.dart';

///
/// [Example]
/// ```dart
/// 1. ウィジェットの中から `watch` する
/// final screen = ScreenRef(context).watch(screenProvider);
///
/// 2. データを取り出して使う
/// final sizeClass = screen.sizeClass; // スマホ or タブレット or パソコン
/// final orientation = screen.orientation; // 回転の向き
/// final designW = screen.designW(100); // デザイン基準に合わせて伸縮する幅
/// final designH = screen.designH(100); // デザイン基準に合わせて伸縮する高さ
/// ```

// --------------------------- //

/// 画面サイズクラス
enum ScreenSizeClass {
  /// スマホ
  phone,

  /// タブレット
  tablet,

  /// パソコン
  desktop,

  ///その他をここに追加
}

// --------------------------- //

/// 画面サイズの設定値
const screenProvider = ScreenProvider(
  breakpoints: {
    ScreenSizeClass.phone: 0,
    ScreenSizeClass.tablet: 768,
    ScreenSizeClass.desktop: 1100,
  },
);

// --------------------------- //

/// Screen Data
class Screen<SizeClass> {
  const Screen._({
    required this.sizeClass,
    required this.orientation,
  });

  /// サイズクラス
  final SizeClass sizeClass;

  /// 画面の回転の向き
  final Orientation orientation;
}

/// Provider for design config
class ScreenProvider<SizeClass> {
  const ScreenProvider({
    required this.breakpoints,
  });
  final Map<SizeClass, double> breakpoints;
}

/// Something like WidgetRef in Riverpod.
class ScreenRef {
  const ScreenRef(this.context);
  final BuildContext context;

  /// ref.watch(provider)
  Screen<SizeClass> watch<SizeClass>(
    ScreenProvider<SizeClass> provider,
  ) {
    // 全ての画面サイズクラス (ブレークポイントが大きい順)
    final sizeClasses = provider.breakpoints.entries.toList();
    sizeClasses.sort(
      (a, b) => b.value.compareTo(a.value),
    );
    final size = MediaQuery.of(context).size;

    final sizeClass = sizeClasses.firstWhere(
      (it) => size.width > it.value,
      orElse: () => throw 'unsupported screen size',
    );
    final orientation = MediaQuery.of(context).orientation;

    return Screen._(
      sizeClass: sizeClass.key,
      orientation: orientation,
    );
  }
}