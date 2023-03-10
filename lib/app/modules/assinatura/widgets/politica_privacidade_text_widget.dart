import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maisbr/app/modules/assinatura/controller/assinatura_controller.dart';

class AssinaturaPoliticaPrivacidadeTextWidget extends GetView<AssinaturaController> {
  const AssinaturaPoliticaPrivacidadeTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
          value: controller.togleRadioAssinatura.value,
          groupValue: false,
          onChanged: (value) {
            print('value: $value');
            if (value != null) {
              controller.togleRadioAssinatura.value = value;
            }
          },
        ),
        Column(
          children: [
            RichText(
              text: const TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Ao assinar você concorda com os ',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey),
                  ),
                  TextSpan(
                    text: '\nTermos de Uso e Política de Privacidade',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
