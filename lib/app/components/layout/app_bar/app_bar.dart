import 'package:flutter/material.dart';

class MBRAppBar extends AppBar {
  final VoidCallback? onPressedArrowBackIos;
  final VoidCallback? onPressedMenu;
  MBRAppBar({super.key, required this.onPressedArrowBackIos, required this.onPressedMenu})
      : super(
          elevation: 1,
          title: const Text(
            'mais br',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
         
        );
}
