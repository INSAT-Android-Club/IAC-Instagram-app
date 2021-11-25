import 'package:flutter/material.dart';
import 'package:workshop4/Pages/homepage.dart';
import 'package:workshop4/Pages/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => Homepage(),
        '/profile': (context) => Profile()
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: Homepage(),
    );
  }
}
