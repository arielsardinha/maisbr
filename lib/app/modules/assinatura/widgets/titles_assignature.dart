import 'package:flutter/material.dart';

class AssinaturaTitles extends StatelessWidget {
  const AssinaturaTitles({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            'Escolha a melhor \nopcão para você',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500, color: Colors.indigo[900]),
          ),
        ),
        const SizedBox(height: 10),
        RichText(
          text: const TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: '      Nossas assinaturas possuem renovaçâo ',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),
              ),
              TextSpan(
                text: '\nautomática e ',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),
              ),
              TextSpan(
                text: 'você pode cancelar quando quiser.',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Colors.black),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
