import 'dart:io';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'pages/home_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    systemNavigationBarColor: Colors.white,
  ));
  //devicepreview
  runApp(
    DevicePreview(
    enabled: !kReleaseMode && kIsWeb,
    builder: (context) => const ProviderScope(
        child: MyApp(),
      ), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      theme: ThemeData(
        useMaterial3: false,
        fontFamily: "SanFrancisco",
        fontFamilyFallback: ["HiraginoSans"],
      ),
      darkTheme: ThemeData(
        useMaterial3: false,
        fontFamily: "SanFrancisco",
        fontFamilyFallback: ["HiraginoSans"],
        brightness: Brightness.dark,
      ),
      home: const HomePage(),
    );
  }
}