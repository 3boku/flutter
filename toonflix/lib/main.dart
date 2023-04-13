import 'package:flutter/material.dart';
import 'package:toonflix/screens/home_screen.dart';
import 'package:toonflix/service/api_servie.dart';

void main() {
  runApp(const App());
  ApiService().getTodaysToons();
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        child: const HomeScreen(),
      ),
    );
  }
}
