import 'package:flutter/material.dart';

class DetailsCardSocialMidia extends StatelessWidget {
  const DetailsCardSocialMidia({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.phone)),
        // const Icon(Icons.facebook),
        // const Icon(Icons.share),
        // const Icon(Icons.youtube),
        // const Icon(Icons.phone),
      ],
    ));
  }
}
