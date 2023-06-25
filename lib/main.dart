import 'package:flutter/material.dart';
import 'screens/mobile_screen_layout.dart';
import 'screens/web_screen_layout.dart';

import 'colors.dart';
import 'responsive/responsive_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        useMaterial3: true,
        scaffoldBackgroundColor: backgroundColor,
        // colorScheme: Theme.of(context).colorScheme.copyWith(),
      ),
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}
