// import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:get/state_manager.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;

class LoginFormController extends GetxController {
  var userId = "".obs;
  var userPass = "".obs;

  var isLoading = false.obs;

  formValidation(String id, String pass) {
    if (id == "" || id.isEmpty) {
      Get.snackbar(
        "error",
        "Please enter user id",
        snackPosition: SnackPosition.BOTTOM,
      );
      return false;
    } else if (pass == "" || pass.isEmpty) {
      Get.snackbar(
        "error",
        "Please enter password",
        snackPosition: SnackPosition.BOTTOM,
      );
      return false;
    } else {
      authUser(id, pass);
    }
  }

  Future<void> authUser(String id, String pass) async {
    isLoading.value = true;

    Map<String, dynamic> body = {
      "userId": id,
      "userPass": pass,
    };
    var dataToSend = json.encode(body);

    var response = await http.post(
        Uri.parse(
            'https://thedigitalgamezone.com/fena-activity-bsi/api/getUserAuthentication.php'),
        body: dataToSend);

    var responseData = jsonDecode(response.body);
    if (responseData['r_msg'] == 'success') {
      isLoading.value = false;
      Get.snackbar(
        "Success",
        "Login successfully",
        snackPosition: SnackPosition.BOTTOM,
      );

      userId.value = id;
      userPass.value = pass;
    } else {
      isLoading.value = false;
      Get.snackbar(
        "Error",
        "Login failed please enter valid details",
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
