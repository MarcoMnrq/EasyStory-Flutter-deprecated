import 'package:easystory/screens/profile_page.dart';
import 'package:flutter/material.dart';
import 'screens/login_page.dart';
import 'screens/profile_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.blue.shade300,
          dividerColor: Colors.black,
          primarySwatch: Colors.blue,
          buttonTheme: ButtonThemeData(height: 36)),
      home: LoginPage(),
    );
  }
}
