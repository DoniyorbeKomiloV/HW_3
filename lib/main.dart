import 'package:flutter/material.dart';
import 'screen1.dart';
import 'screen2.dart';
import 'screen3.dart';
import 'screen4.dart';
import 'screen5.dart';
import 'screen6.dart';
import 'screen7.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomeScreen(),
        '/screen2': (context) => const Cola(),
        '/screen3': (context) => const Pepsi(),
        '/screen4': (context) => const Fanta(),
        '/screen5': (context) => const Sprite(),
        '/screen6': (context) => const Asu(),
        '/screen7': (context) => const Mountain_dew(),
      },
    );
  }
}