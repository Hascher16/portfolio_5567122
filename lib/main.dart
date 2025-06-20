import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/slider_page.dart';
import 'pages/profile_form_page.dart';
import 'pages/settings_page.dart';
import 'pages/summary_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio von Hascher Malik',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomePage(),
      routes: {
        '/slider': (context) => const SliderPage(),
        '/profile': (context) => const ProfileFormPage(),
        '/settings': (context) => const SettingsPage(),
        '/summary': (context) => SummaryPage(
          name: '',
          email: '',
          about: '',
          sliderValue: 0,
          newsletter: false,
          notifications: false,
          darkMode: false,
          offlineMode: false,
        ),
      },
    );
  }
}
