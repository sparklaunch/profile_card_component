import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile_card_component/screens/main_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      theme: _buildTheme(Brightness.dark),
      home: const Scaffold(
        backgroundColor: Color.fromRGBO(24, 151, 164, 1),
        body: MainScreen(),
      ),
    ),
  );
}

ThemeData _buildTheme(brightness) {
  var baseTheme = ThemeData(brightness: brightness);
  return baseTheme.copyWith(
      textTheme: GoogleFonts.kumbhSansTextTheme(baseTheme.textTheme));
}
