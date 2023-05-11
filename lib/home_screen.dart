import 'package:flutter/material.dart';
import 'package:flutter_getx/counter_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  NotificationController controller=Get.put(NotificationController());
  bool notification=false;
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
      body: Column(
        children: [
          Text("Notifications"),
          Obx(() => Switch(value: controller.notification.value, onChanged: (value){
            controller.setNotification(value);
          }))
        ],
      )
    );
  }
}
