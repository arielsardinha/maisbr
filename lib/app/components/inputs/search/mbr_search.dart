import 'package:flutter/material.dart';

class MbrSearch extends StatelessWidget {
  final TextEditingController? textEditingController;
  const MbrSearch({
    Key? key,
    this.textEditingController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 12, bottom: 12),
      child: TextField(
        decoration: const InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
          hintText: 'O que você busca hoje? ',
          suffixIcon: Icon(Icons.search, color: Colors.black),
        ),
        controller: textEditingController,
      ),
    );
  }
}
