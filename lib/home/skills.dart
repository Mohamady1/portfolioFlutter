import 'package:counter/UI/seperateLine.dart';
import 'package:counter/UI/skill.dart';
import "package:flutter/material.dart";

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        children: [
          Text(
            "Skills",
            style: TextStyle(
                fontSize: 30, color: Theme.of(context).colorScheme.secondary),
          ),
          const SizedBox(
            width: 10,
          ),
          const Seperate(),
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            Skill("JavaScript",
                "https://seeklogo.com/images/J/javascript-logo-8892AEFCAC-seeklogo.com.png"),
            Skill("Java",
                "https://assets.stickpng.com/images/58480979cef1014c0b5e4901.png"),
            Skill("Dart",
                "https://seeklogo.com/images/D/dart-logo-FDA1939EC4-seeklogo.com.png"),
            Skill("React Native",
                "https://cdn4.iconfinder.com/data/icons/logos-3/600/React.js_logo-512.png"),
            Skill("Flutter",
                "https://seeklogo.com/images/F/flutter-logo-5086DD11C5-seeklogo.com.png"),
          ],
        ),
      )
    ]);
  }
}
