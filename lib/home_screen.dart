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
        title: Center(child: Text("GetX Tutorials")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              child: ListTile(
                title: Text("Dialog Alert"),
                subtitle: Text("GetX dialog alert with getx"),
                onTap: (){
                  Get.defaultDialog(
                    title: 'Delete chat',
                    titlePadding: EdgeInsets.only(top: 20),
                    contentPadding: EdgeInsets.all(20),
                    //middleText: 'Are you sure want to delete this chat?',
                    confirm: TextButton(onPressed: (){
                      //Navigator.pop(context);
                      Get.back();
                    },
                        child: Text("Ok")),
                    cancel: TextButton(onPressed: (){}, child: Text("Cancel")),
                    content: Column(
                      children: [
                        Text("Cancel"),
                        Text("Cancel"),
                        Text("Cancel"),
                        Text("Cancel"),
                        Text("Cancel"),
                      ],
                    )
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Bottomsheet"),
                subtitle: Text("Bottomsheet with GetX"),
                onTap: (){
                  Get.bottomSheet(
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.light_mode),
                            title: Text('Light mode'),
                            onTap: (){
                              Get.changeTheme(ThemeData.light());
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.dark_mode),
                            title: Text('Dark mode'),
                            onTap: (){
                              Get.changeTheme(ThemeData.dark());
                            },
                          ),
                        ],
                      ),
                    )
                  );
                },
              ),
            )
          ],
        ),
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
