// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quran/translation/translation.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ElevatedButton(
          onPressed: () {
            Utils.changeLanguage('en');
            (context as Element).markNeedsBuild();
          },
          child: Text('Change to English'),
        ),
        ElevatedButton(
          onPressed: () {
            Utils.changeLanguage('tr');
            (context as Element).markNeedsBuild();
          },
          child: Text('تغيير إلى التركية'),
        ),
      ],
    ));
  }
}
