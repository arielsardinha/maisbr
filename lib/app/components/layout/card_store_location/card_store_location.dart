import 'package:flutter/material.dart';

class MBRCardStoreLocation extends StatelessWidget {
  const MBRCardStoreLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Column(
          children: [
            ListTile(
              title: const Text('Carrefour Market'),
              subtitle: const Text('Rua Romualdo Lopes Cansado BB, 304 - Bairro Castelo'),
              leading: Expanded(
                  child:
                      Image.network('https://www.infomoney.com.br/wp-content/uploads/2019/06/praia-cacimba-do-padre.jpg?fit=900%2C510&quality=50&strip=all')),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.percent),
                  label: const Text('50% off'),
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.blue[900],
                    backgroundColor: Colors.grey[300],
                  ),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.star),
                  label: const Text('4.6'),
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.yellow,
                    backgroundColor: Colors.grey[200],
                  ),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.location_on),
                  label: const Text('6,8 KM'),
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
