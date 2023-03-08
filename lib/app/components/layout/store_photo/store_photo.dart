import 'package:flutter/material.dart';

class MBRStorePhoto extends StatelessWidget {
  const MBRStorePhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://www.infomoney.com.br/wp-content/uploads/2019/06/praia-cacimba-do-padre.jpg?fit=900%2C510&quality=50&strip=all'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
