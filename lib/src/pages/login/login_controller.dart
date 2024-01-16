import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login(){
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    print('Email ${email}');
    print('Password ${password}');

    //Get.snackbar('Email', email);
    //Get.snackbar('Clave', password);
    if(email=="admin" && password=="123"){
      Get.snackbar('Respuesta','clave correcta!');
      Get.toNamed('/main');
    }else{
      Get.snackbar('Respuesta','clave incorrecta!');
    }
  }
}