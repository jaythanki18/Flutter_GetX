import 'package:flutter/material.dart';
import 'package:flutter_getx/home_screen.dart';
import 'package:flutter_getx/languages.dart';
import 'package:flutter_getx/screen_one.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      translations: Language(),
      locale: Locale('en','US'),
      fallbackLocale: Locale('en','US'),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
