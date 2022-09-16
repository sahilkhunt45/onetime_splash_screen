import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:splash_screen/screens/homepage.dart';
import 'package:splash_screen/screens/intropage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool? isWelcomed = prefs.getBool('isWelcomed') ?? false;

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: (isWelcomed == false) ? 'intro_screen' : '/',
      routes: {
        '/': (context) => const HomePage(),
        'intro_screen': (context) => const IntroPage(),
      },
    ),
  );
}
