import 'package:counter/UI/language.dart';
import 'package:counter/UI/seperateLine.dart';
import 'package:flutter/material.dart';

class Languages extends StatelessWidget {
  const Languages({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "Languages",
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
              Language("https://countryflagsapi.com/png/SA"),
              Language("https://countryflagsapi.com/png/GB"),
              Language("https://countryflagsapi.com/png/DE")
            ],
          ),
        )
      ],
    );
  }
}
