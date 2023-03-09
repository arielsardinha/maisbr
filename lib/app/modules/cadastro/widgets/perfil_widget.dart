import 'package:flutter/material.dart';

class CadastroPerfilWidget extends StatelessWidget {
  const CadastroPerfilWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 56.0, top: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Meu perfil', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
          Column(
            children: const [
              CircleAvatar(
                radius: 40,
                child: Icon(Icons.person, size: 80),
              ),
              Text('Editar', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
            ],
          ),
        ],
      ),
    );
  }
}
