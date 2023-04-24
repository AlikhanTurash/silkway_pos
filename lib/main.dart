import 'package:flutter/material.dart';
import 'package:silkway_pos/pages/home_page.dart';
import './pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.cyan)
              .copyWith(secondary: Colors.tealAccent),
          fontFamily: 'Montserrat'),
      home: LoginPage(),
    );
  }
}
