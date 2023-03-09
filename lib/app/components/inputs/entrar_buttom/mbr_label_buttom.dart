import 'package:flutter/material.dart';

class MbrLabelButtom extends StatelessWidget {
  final String label;
  const MbrLabelButtom({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.indigoAccent[700],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          child: Text(label, style: const TextStyle(fontSize: 22))),
    );
  }
}
