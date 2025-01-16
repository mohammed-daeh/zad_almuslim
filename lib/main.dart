// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quran/custom/bottom_navigation_bar/bottom_navigation_bar_view.dart';
import 'package:quran/translation/translation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Utils.loadTranslations('assets/translations.json');
  Utils.changeLanguage('ar');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: BottomNavigationBarView()),
    );
  }
}
