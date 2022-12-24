import 'dart:ui';

import 'package:counter/UI/seperateLine.dart';
import "package:flutter/material.dart";

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        children: [
          Text(
            "About",
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
      ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Card(
            color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
            child: const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                  "P-TECH Student at school for applied technology, I like what I do and want to improve myself.\n\n- I have a passion for learning new technologies and gain new valuable skills\n\n- I like to being in the workplace around the community who loves programming and works in tech to learn more from more experienced people."),
            ),
          ),
        ),
      ),
    ]);
  }
}
