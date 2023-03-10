import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maisbr/app/modules/login/controller/login_controller.dart';

class LoginEsqueciSenhaWidget extends GetView<LoginController> {
  const LoginEsqueciSenhaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text('Lembre-me', style: TextStyle(color: Colors.grey[600])),
              Obx(
                () => Switch(
                  value: controller.togleswitchLogin.value,
                  onChanged: (value) {
                    controller.togleswitchLogin.value = value;
                  },
                  activeColor: Colors.blue,
                ),
              ),
            ],
          ),
          Text(
            'Esqueci minha senha',
            style: TextStyle(
              color: Colors.grey[600],
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}
