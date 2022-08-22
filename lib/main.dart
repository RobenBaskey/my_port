import 'package:flutter/material.dart';
import 'package:my_portfolio/screens/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Color(0xFFE8ECF0),
          primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(
              backgroundColor: Color(0xFFE8ECF0),
              
              elevation: 0,
              titleTextStyle:
                  TextStyle(fontFamily: "Nunito", fontWeight: FontWeight.bold)),
        ),
        home: MainPage());
  }
}
