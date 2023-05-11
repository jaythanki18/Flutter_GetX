import 'package:flutter/material.dart';
import 'package:flutter_getx/counter_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CounterController controller=Get.put(CounterController());

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
      body: Center(
        child: Obx((){
          return Text(controller.counter.toString(),style: TextStyle(fontSize: 60),);
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          controller.incrementCounter();
        },
      ),
    );
  }
}
