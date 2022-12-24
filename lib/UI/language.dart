import "package:flutter/material.dart";

class Language extends StatelessWidget {
  final String? picture;
  const Language(this.picture, {super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: SizedBox(
        height: 120,
        width: 160,
        child: Card(
            child: Image.network(
          "$picture",
          fit: BoxFit.cover,
        )),
      ),
    );
  }
}
