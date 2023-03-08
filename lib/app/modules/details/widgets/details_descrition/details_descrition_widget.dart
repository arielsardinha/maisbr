import 'package:flutter/material.dart';

class DetailsDescritionWidget extends StatelessWidget {
  final String title;
  const DetailsDescritionWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(bottom: 12, left: 16, right: 16),
      title: Text(title, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
      subtitle: const Text(
          'Rua Romualdo Lopes Cansado BB, 304 - Bairro Castelo Rua Romualdo Lopes Cansado BB, 304 - Bairro Castelo Rua Romualdo Lopes Cansado BB, 304 - Bairro Castelo Rua Romualdo Lopes Cansado BB, 304 - Bairro Castelo Rua Romualdo Lopes Cansado BB, 304 - Bairro Castelo Rua Romualdo Lopes Cansado BB, 304 - Bairro Castelo Rua Romualdo Lopes Cansado BB, 304 - Bairro CasteloRua Romualdo Lopes Cansado BB, 304 - Bairro Castelo Rua Romualdo Lopes Cansado BB, 304 - Bairro CasteloRua Romualdo Lopes Cansado BB, 304 - Bairro Castelov Rua Romualdo Lopes Cansado BB, 304 - Bairro Castelo'),
    );
  }
}
