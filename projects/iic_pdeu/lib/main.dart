import 'package:flutter/material.dart';
import 'package:iic_pdeu/screens/auth_screen.dart';
import 'package:iic_pdeu/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IIC PDEU',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomeScreen(),
      routes: {
        '/': (ctx) => const AuthScreen(),
        HomeScreen.routeName: (ctx) => const HomeScreen(),
      },
    );
  }
}