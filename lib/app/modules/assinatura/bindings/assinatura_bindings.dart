import 'package:get/get.dart';
import '../controller/assinatura_controller.dart';

class AssinaturaBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AssinaturaController());
  }
}
