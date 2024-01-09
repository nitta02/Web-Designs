import 'package:flutter/material.dart';
import 'package:social_media_app/view/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SocioMedia',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blue.withOpacity(0.5),
        fontFamily: 'Raleway',
      ),
      home: const SplashScreen(),
    );
  }
}
