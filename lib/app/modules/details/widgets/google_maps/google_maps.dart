import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maisbr/app/modules/details/controller/details_controller.dart';

class DetailsGoogleMapsWidget extends GetView<DetailsController> {
  const DetailsGoogleMapsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.4,
      child: GoogleMap(initialCameraPosition: controller.inicialCameraPosition),
    );
  }
}
