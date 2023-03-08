import 'package:flutter/material.dart';

class MBRAppBar extends AppBar {
  MBRAppBar({
    super.key,
  }) : super(
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
