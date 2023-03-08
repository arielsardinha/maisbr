import 'package:flutter/material.dart';

class HomeAdsWidget extends StatelessWidget {
  const HomeAdsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 12, bottom: 12),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Restam: 05:29:12', style: TextStyle(color: Colors.amber[800], fontSize: 12, fontWeight: FontWeight.w500)),
                const SizedBox(height: 10),
                const Text('R\$ 20 GRÁTIS!', style: TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold)),
                const SizedBox(height: 4),
                const Text('Aproveite em lojas selecionadas', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500)),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0),
                        ),
                      ),
                      child: Row(
                        children: const [
                          Text('Ver Lojas', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                          Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    const Text(
                      'Aplicam-se T&C',
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
              ],
            ),
            Image.network(
              'https://img2.gratispng.com/20180326/eje/kisspng-software-testing-logo-los-angeles-center-of-photog-ielts-5ab972fa29fd29.914217881522103034172.jpg',
              width: 100,
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
