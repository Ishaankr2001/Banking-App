// @dart=2.9
import 'package:bank/screens/home.dart';
import 'package:bank/screens/users.dart';
import 'package:bank/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static Color theme = Colors.blueAccent;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/home": (context) => HomeScreen(),
        "/users": (context) => UsersScreen(),
      },
    );
  }
}
