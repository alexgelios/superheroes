import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:superheroes/pages/main_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  await dotenv.load();
   runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.openSansTextTheme(
          Theme.of(context).textTheme,// If this is not set, then ThemeData.light().textTheme is used
         ),
      ),
      home: MainPage(),
    );
  }
}
