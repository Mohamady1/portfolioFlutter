import "package:flutter/material.dart";
import 'dart:ui';

class Skill extends StatelessWidget {
  final String? skill;
  final String? picture;

  const Skill(this.skill, this.picture, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Card(
            color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.4),
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: (Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: Image.network(
                      "$picture",
                      fit: BoxFit.contain,
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "$skill",
                      style: const TextStyle(fontSize: 15),
                    ),
                  )
                ],
              )),
            ),
          ),
        ),
      ),
    );
  }
}
