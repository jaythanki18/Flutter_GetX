import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_getx/image_picker_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ImagePickerController controller=Get.put(ImagePickerController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX tutorials"),
      ),
      body: Obx((){
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 40,
                backgroundImage: controller.imagePath.isNotEmpty ?
                FileImage(File(controller.imagePath.toString())):
                null
              ),
            ),
            TextButton(onPressed: (){
              controller.getImage();
            }, child: Text('Pick image'))
          ],
        );
      })
    );
  }
}
