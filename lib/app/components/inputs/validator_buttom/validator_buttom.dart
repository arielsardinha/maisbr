import 'package:flutter/material.dart';

class MBRValidatorButtom extends StatelessWidget {
  const MBRValidatorButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.greenAccent[400],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Text('Validar meu desconto', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black)),
            Icon(Icons.check, size: 30, color: Colors.green),
          ],
        ),
      ),
    );
  }
}
