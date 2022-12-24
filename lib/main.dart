import 'package:counter/AppBottom/footer.dart';
import 'package:counter/AppBar/header.dart';
import 'package:counter/home/body.dart';
import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.white,
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(secondary: const Color.fromARGB(255, 8, 29, 214))),
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 228, 228, 228),
          body: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [AppHeader(), AppBody(), Footer()]),
          )),
    );
  }
}
