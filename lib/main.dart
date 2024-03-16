import 'package:flutter/material.dart';
import 'New.dart';
import 'Home_p.dart';
import 'splash_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my new app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //colorScheme:ColorScheme.fromSeed(seedColor: Colors.lightGreen)
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue)
      ),
      home: const SplashScreen(),
    );
  }
}




