import 'package:counter/home/social.dart';
import "package:flutter/material.dart";

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.21, vertical: 10),
      child: Column(
        children: const [
          FittedBox(
            child: Text(
              "By Omar Ahmed Mohamady with ❤️",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Social()
        ],
      ),
    );
  }
}
