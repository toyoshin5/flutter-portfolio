import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_portfolio/pages/cook_page.dart';
import 'package:flutter_portfolio/pages/license_page.dart';
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
    precacheImage(const AssetImage('assets/images/cook/IMG_0000.jpg'), context);
    return MaterialApp(
      title: "Toyoda's Portfolio",
      theme: ThemeData(
        useMaterial3: false,
        fontFamily: "SanFrancisco",
        fontFamilyFallback: const ["HiraginoSans"],
      ),
      darkTheme: ThemeData(
        useMaterial3: false,
        fontFamily: "SanFrancisco",
        fontFamilyFallback: const ["HiraginoSans"],
        brightness: Brightness.dark,
      ),
      routes: {
        '/': (context) => const HomePage(),
        '/license': (context) => const AppLicensePage(),
        '/cook': (context) => const CookPage(),
      },
      initialRoute: '/',
    );
  }
}
