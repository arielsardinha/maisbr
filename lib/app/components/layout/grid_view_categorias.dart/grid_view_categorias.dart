import 'package:flutter/material.dart';

class MBRGridViewCategorias extends StatelessWidget {
  const MBRGridViewCategorias({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: MediaQuery.of(context).size.height * 0.43,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 2,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Stack(
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(left: 10),
                  width: 100,
                  child: const Text(
                    'Frutas e verduras Frutas e verduras',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Positioned(
                  bottom: -10,
                  right: -10,
                  child: Container(
                    width: 100,
                    height: 80,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://img2.gratispng.com/20180618/xpj/kisspng-penetration-test-logo-software-testing-security-utensilios-5b2879a1715af3.5850618415293792334643.jpg'),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.black,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
