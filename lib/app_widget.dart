import 'package:flutter/material.dart';
import 'create_note/create_note_page.dart';
import 'package:notes/home_page/home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      title: "Notes",
      initialRoute: "/home",
      routes: {
        "/home": (context) => HomePage(),
        "/create-note": (context) => CreateNotePage(),
      },
    );
  }
}
