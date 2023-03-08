import 'package:get/get.dart';
import 'package:maisbr/app/modules/details/controller/details_controller.dart';

class DetailsBindes implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailsController());
  }
}
