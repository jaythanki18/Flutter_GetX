import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginController extends GetxController{

  final emailController=TextEditingController().obs;
  final passwordController=TextEditingController().obs;
  RxBool loading=false.obs;

  void loginAPI() async{
    loading.value=true;
    try{
      final response=await post(Uri.parse('https://reqres.in/api/login'),
          body : {
            'email' : emailController.value.text,
            'password' : passwordController.value.text
          }
      );

      var data=jsonDecode(response.body);

      if(response.statusCode == 200){
        loading.value=false;
        Get.snackbar("Login successful", 'congrats',backgroundColor: Colors.white70,);
      }
      else{
        loading.value=false;
        Get.snackbar("Login failed", data['error'],backgroundColor: Colors.white70);
      }
    }
    catch(e){
      loading.value=false;
      Get.snackbar("Exception occured", e.toString(),backgroundColor: Colors.white70);
    }

  }
}