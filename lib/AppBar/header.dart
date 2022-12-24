import "package:flutter/material.dart";

class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(70),
          )),
      height: MediaQuery.of(context).size.height * 0.22,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Hello, 👋",
                style: TextStyle(
                    fontSize: 20, color: Theme.of(context).primaryColor),
              ),
              Text("Omar Ahmed Mohamady",
                  style: TextStyle(
                      fontSize: 20, color: Theme.of(context).primaryColor)),
              const SizedBox(
                height: 10,
              ),
              const Text("Mobile Developer | Flutter",
                  style: TextStyle(
                      fontSize: 15, color: Color.fromARGB(255, 218, 207, 207))),
            ]),
            CircleAvatar(
              maxRadius: 40,
              backgroundColor: Theme.of(context).colorScheme.secondary,
              child: Image.network(
                  "https://sdk.bitmoji.com/render/panel/10226021-100639437520_6-s5-v1.webp?transparent=1&scale=0"),
            ),
          ],
        ),
      ),
    );
  }
}
