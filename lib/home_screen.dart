import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX Tutorials"),
      ),
      body: Column(
        children: [

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Get.snackbar(
              "Jay Thanki", "Mobile Application Developer",
            backgroundColor: Colors.white70,
            snackPosition: SnackPosition.TOP,
            icon: Icon(Icons.person),
            onTap: (snap){},
            mainButton: TextButton(onPressed: (){}, child: Text("Click"))
          );
          //  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Hi")));
        },
      ),
    );
  }
}
