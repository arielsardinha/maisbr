import 'package:flutter/material.dart';

class MBRAppBar extends AppBar {
  MBRAppBar({
    super.key,
  }) : super(
          elevation: 1,
          title: Image.asset(
            'assets/imagens/icon.png',
            height: 40,
            width: 40,
          ),
          centerTitle: true,
        );
}
