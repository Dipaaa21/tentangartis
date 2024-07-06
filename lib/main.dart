import 'package:flutter/material.dart';
import 'package:myapp/screens/about_screen.dart';
import 'package:myapp/screens/artis_screen.dart';
import 'package:myapp/screens/home_screen.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "home": (context) => const HomeScreen(),
        '/about': (context) => const AboutScreen(),
        '/artis': (context) => ListArtisScreen()
      },
      initialRoute: "home",
      home: Scaffold(
        appBar: AppBar(
          title: Text('Belajar Flutter'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: HomeScreen(),
      ),
    );
  }
}
