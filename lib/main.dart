import 'package:bottom_app_bar_tutorial/bottomAppBarList.dart';
import 'package:bottom_app_bar_tutorial/navscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.teal,
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.grey),
        ),
        home: BottomAppBarList());
  }
}
