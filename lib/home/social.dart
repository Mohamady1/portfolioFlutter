import "package:flutter/material.dart";
import 'package:url_launcher/url_launcher.dart';

class Social extends StatelessWidget {
  const Social({super.key});

  openUrl(url) {
    final link = url;
    // ignore: deprecated_member_use
    launch(link);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onTap: () async {
            const url = "https://github.com/Mohamady1";
            openUrl(url);
          },
          child: const SizedBox(
            height: 30,
            width: 30,
            child: Image(
              image: AssetImage('assets/github.png'),
            ),
          ),
        ),
        InkWell(
          mouseCursor: MouseCursor.defer,
          onTap: () async {
            const url =
                "https://www.linkedin.com/in/omar-ahmed-mohamady-9a56661a3/";
            openUrl(url);
          },
          child: const SizedBox(
            height: 30,
            width: 30,
            child: Image(
              image: AssetImage('assets/linkedin.png'),
            ),
          ),
        ),
      ],
    );
  }
}
