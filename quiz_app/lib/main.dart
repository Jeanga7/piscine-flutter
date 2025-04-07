import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'screens/categories_screen.dart';
import 'screens/score_screen.dart';

void main() {
  runApp(DevicePreview(enabled: true, builder: (context) => MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => CategoriesScreen(),
        '/score': (context) => ScoreScreen(),
      },
    );
  }
}
