import 'package:flutter/material.dart';

class LoginLogoMWidget extends StatelessWidget {
  const LoginLogoMWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(height: 120, width: 120, child: Image.asset('assets/imagens/LogoM.jpeg')),
    );
  }
}
