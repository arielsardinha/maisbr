import 'package:flutter/material.dart';

class InfoPerfilWidget extends StatelessWidget {
  const InfoPerfilWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Meu perfil', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.indigo[900])),
            const Text('Alterar senha', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
          ],
        ),
        const CircleAvatar(
          radius: 40,
          child: Icon(Icons.person, size: 80),
        ),
      ],
    );
  }
}
