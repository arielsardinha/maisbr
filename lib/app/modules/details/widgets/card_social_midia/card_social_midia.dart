import 'package:flutter/material.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:fluttericon/fontelico_icons.dart';
import 'package:fluttericon/linecons_icons.dart';
import 'package:fluttericon/brandico_icons.dart';
import 'package:fluttericon/elusive_icons.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';

import 'package:fluttericon/iconic_icons.dart';
import 'package:fluttericon/linearicons_free_icons.dart';

import 'package:fluttericon/maki_icons.dart';
import 'package:fluttericon/meteocons_icons.dart';
import 'package:fluttericon/mfg_labs_icons.dart';
import 'package:fluttericon/modern_pictograms_icons.dart';
import 'package:fluttericon/octicons_icons.dart';
import 'package:fluttericon/rpg_awesome_icons.dart';

import 'package:fluttericon/web_symbols_icons.dart';
import 'package:fluttericon/zocial_icons.dart';

class DetailsCardSocialMidia extends StatelessWidget {
  const DetailsCardSocialMidia({super.key});

  @override
  Widget build(BuildContext context) {
    final myIcons = const <Widget>[
      const Icon(Typicons.phone_outline),
      const Icon(Fontelico.emo_wink),
      const Icon(Linecons.globe),
      const Icon(Brandico.instagram_1),
      const Icon(Elusive.facebook),
      const Icon(Entypo.facebook),
      const Icon(FontAwesome5.instagram),
      const Icon(FontAwesome.whatsapp),
      const Icon(Fontelico.emo_wink),
      const Icon(LineariconsFree.phone),
      const Icon(Linecons.globe),
      const Icon(Maki.bar),
      const Icon(MfgLabs.heart),
      const Icon(ModernPictograms.heart),
      const Icon(Octicons.alert),
      const Icon(Typicons.attention),
      const Icon(WebSymbols.heart),
      const Icon(Zocial.facebook),
    ];
    return Card(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
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
