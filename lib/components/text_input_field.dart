import 'package:fena_activity/constrants.dart';
import 'package:fena_activity/controller/password_visibility_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

// ------------------------------------------->
// -------------- Text Field ----------------->
// ------------------------------------------->
class TextInputField extends StatelessWidget {
  const TextInputField({
    Key? key,
    required this.icon,
    required this.hintText,
    required this.lableText,
    required this.onChange,
    required this.errorText,
    required this.controllerVar,
  }) : super(key: key);

  final IconData icon;
  final String hintText;
  final String lableText;
  final String errorText;
  final TextEditingController controllerVar;
  final ValueChanged<String> onChange;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return TextFormField(
      decoration: InputDecoration(
        icon: Icon(
          icon,
          size: size.width * 0.07,
          color: kPrimaryColor,
        ),
        hintText: hintText,
        // ignore: prefer_const_constructors
        hintStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Colors.black87,
        ),
        label: Text(
          lableText,
          // ignore: prefer_const_constructors
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: kPrimaryColor,
          ),
        ),
        border: InputBorder.none,
      ),
      controller: controllerVar,
      // validator: (value) {
      //   if (value == "" || value!.isEmpty) {
      //     return errorText;
      //   }
      //   return null;
      // },
    );
  }
}

// ----------------------------------------------->
// -------------- Password Field ----------------->
// ----------------------------------------------->

// ignore: must_be_immutable
class PasswordInputField extends StatelessWidget {
  PasswordInputField({
    Key? key,
    required this.onChange,
    required this.userPass,
  }) : super(key: key);

  final IconData icon = Icons.lock;
  final String hintText = 'Enter Password';
  final String lableText = 'Password';
  final String errorText = 'Please Enter Password';
  final ValueChanged<String> onChange;
  final TextEditingController userPass;

  PasswordVisibilityController passwordVisibilityController =
      Get.put(PasswordVisibilityController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Obx(
      () => TextFormField(
        obscureText: passwordVisibilityController.isHidden.value,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            size: size.width * 0.08,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          // ignore: prefer_const_constructors
          hintStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Colors.black87,
          ),
          label: Text(
            lableText,
            // ignore: prefer_const_constructors
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: kPrimaryColor,
            ),
          ),
          border: InputBorder.none,
          // ignore: prefer_const_constructors
          suffixIcon: IconButton(
            // ignore: prefer_const_constructors
            icon: passwordVisibilityController.isHidden.value == true
                // ignore: prefer_const_constructors
                ? Icon(
                    Icons.visibility,
                    color: kPrimaryColor,
                  )
                // ignore: prefer_const_constructors
                : Icon(
                    Icons.visibility_off,
                    color: kPrimaryColor,
                  ),
            onPressed: () {
              passwordVisibilityController.changeHiddenStatus();
            },
          ),
        ),
        controller: userPass,
        // validator: (value) {
        //   if (value == "" || value!.isEmpty) {
        //     return errorText;
        //   }
        //   return null;
        // },
      ),
    );
  }
}
