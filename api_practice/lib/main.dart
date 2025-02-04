import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/my_provider.dart';

import './screens/splash_screen.dart';
import './screens/movies_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MyProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'API Integration',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const SplashScreen(),
      routes: {
        '/movies': (context) => const HomeScreen(),
      },
    );
  }
}
