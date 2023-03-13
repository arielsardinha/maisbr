import 'package:flutter/material.dart';
import 'package:fluttericon/linecons_icons.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';

class DetailsCardSocialMidia extends StatelessWidget {
  const DetailsCardSocialMidia({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.values[2],
      children: [
        IconButton(onPressed: () {}, icon: const Icon(FontAwesome.whatsapp)),
        IconButton(onPressed: () {}, icon: const Icon(FontAwesome5.instagram)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
        IconButton(onPressed: () {}, icon: const Icon(Linecons.globe)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.phone)),
      ],
    ));
  }
}
