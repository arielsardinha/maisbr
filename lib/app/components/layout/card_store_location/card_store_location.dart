import 'package:flutter/material.dart';

class MBRCardStoreLocation extends StatelessWidget {
  const MBRCardStoreLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                    width: 100,
                    child:
                        Image.network('https://www.infomoney.com.br/wp-content/uploads/2019/06/praia-cacimba-do-padre.jpg?fit=900%2C510&quality=50&strip=all')),
                Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: const ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text('Carrefour Market'),
                        subtitle: Text('Rua Romualdo Lopes Cansado BB, 304 - Bairro Castelo'),
                      ),
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
                          ),
                        ),
                        TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.star),
                          label: const Text('4.6'),
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.yellow,
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
