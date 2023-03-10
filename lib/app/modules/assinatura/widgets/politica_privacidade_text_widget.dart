import 'package:flutter/material.dart';

class AssinaturaPoliticaPrivacidadeTextWidget extends StatelessWidget {
  const AssinaturaPoliticaPrivacidadeTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
          value: false,
          groupValue: true,
          onChanged: (value) {},
        ),
        Column(
          children: [
            RichText(
              text: const TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Ao assinar você concorda com os ',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey),
                  ),
                  TextSpan(
                    text: '\nTermos de Uso e Política de Privacidade',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
