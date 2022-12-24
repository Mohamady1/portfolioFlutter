import 'package:counter/home/about.dart';
import 'package:counter/home/languages.dart';
import 'package:counter/home/skills.dart';
import "package:flutter/material.dart";

class AppBody extends StatelessWidget {
  const AppBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          About(),
          SizedBox(
            height: 20,
          ),
          Languages(),
          SizedBox(
            height: 20,
          ),
          Skills(),
        ],
      ),
    );
  }
}
