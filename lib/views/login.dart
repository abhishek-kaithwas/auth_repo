// ignore_for_file: prefer_const_constructors

import 'package:fena_activity/components/rounded_button.dart';
import 'package:fena_activity/components/rounded_input_container.dart';
// ignore: unused_import
import 'package:fena_activity/components/text_input_field.dart';
import 'package:fena_activity/controller/login_form_contorller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

// ignore: use_key_in_widget_constructors, must_be_immutable
class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  TextEditingController userId = TextEditingController();
  TextEditingController userPass = TextEditingController();
  LoginFormController loginFormController = Get.put(LoginFormController());
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // ignore: sized_box_for_whitespace
    return SingleChildScrollView(
      // ignore: sized_box_for_whitespace
      child: Container(
        width: double.infinity,
        height: size.height,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              Text(
                "Login",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              SvgPicture.asset(
                "assets/svgs/undraw_secure_login_pdn4.svg",
                width: size.width * 0.6,
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFieldContainer(
                      child: TextInputField(
                        hintText: 'Enter User Id',
                        lableText: 'User Id',
                        icon: Icons.person,
                        onChange: (String value) {},
                        errorText: 'Please Enter User Id',
                        controllerVar: userId,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    TextFieldContainer(
                      child: PasswordInputField(
                        onChange: (String value) {},
                        userPass: userPass,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Obx(
                      () => loginFormController.isLoading.value == true
                          ? CircularProgressIndicator()
                          : RoundedButton(
                              text: 'Login',
                              press: () {
                                // print("hello");

                                loginFormController.formValidation(
                                    userId.text, userPass.text);

                                // if (_formKey.currentState!.validate()) {
                                //   ScaffoldMessenger.of(context).showSnackBar(
                                //       SnackBar(content: Text('Processing data')));
                                // } else {
                                //   ScaffoldMessenger.of(context)
                                //       .showSnackBar(SnackBar(content: Text('Error')));
                                // }
                              },
                            ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
