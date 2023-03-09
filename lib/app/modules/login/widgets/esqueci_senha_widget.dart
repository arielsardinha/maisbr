import 'package:flutter/material.dart';

class LoginEsqueciSenhaWidget extends StatelessWidget {
  const LoginEsqueciSenhaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text('Lembre-me', style: TextStyle(color: Colors.grey[600])),
              Switch(
                value: false,
                onChanged: (value) {},
                activeColor: Colors.blue,
              ),
            ],
          ),
          Text(
            'Esqueci minha senha',
            style: TextStyle(
              color: Colors.grey[600],
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}
