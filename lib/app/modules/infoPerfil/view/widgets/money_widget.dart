import 'package:flutter/material.dart';

class InfoPerfilMoneyWidget extends StatelessWidget {
  const InfoPerfilMoneyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Text(
          'O quanto você ja economizou com nossa plataforma',
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.grey),
        ),
        Stack(
          children: [
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.indigo[900],
              child: Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 60,
                      width: 100,
                      color: Colors.red[900],
                    ),
                    const Text(
                      'R\$ 0,00',
                      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
