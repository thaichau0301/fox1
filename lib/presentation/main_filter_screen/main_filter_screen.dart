import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fox/presentation/main_navigation/controller/main_bottom_navigation_controller.dart';
import 'package:get/get.dart';
import 'package:photofilters/filters/preset_filters.dart';
import 'package:photofilters/widgets/photo_filter.dart';
import '../../widgets/custom_navigation_top.dart';
import 'package:image/image.dart' as img;
import 'dart:typed_data';
import '../main_adjust_screen/controller/main_adjust_controller.dart';
import 'package:path/path.dart';


class ApplyFilters {
  final adjustController = Get.put(MainAdjustController());
  MainBottomNavController mainController = Get.find();
  Future<void> apply() async {
    try {
      File fileImage = File(mainController.editedImage.value!.path);
      String _filename = basename(mainController.editedImage.value!.path);
      Uint8List bytes = fileImage.readAsBytesSync();
      img.Image? _image = img.decodeImage(bytes);
      Map getImage = await Get.to(() => PhotoFilterSelector(
                  customAppBar: navigationTop(),
                  image: _image!,
                  filters: presetFiltersList,
                  filename: _filename,
                  loader: const Center(child: CircularProgressIndicator(strokeWidth: 1.0, )),
                  fit: BoxFit.contain,
                  isFilter: true,
              )
      );

      if (getImage.containsKey('image_filtered')) {
        mainController.editedImage.value!.deleteSync(); // delete old file
        mainController.editedImage.value = getImage['image_filtered'];
        print('editedImage of main controller ' + mainController.editedImage.value.toString());
      }
    }
    catch (e){
      print('error adjust image $e');
    }
  }
}
