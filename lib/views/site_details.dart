// ignore_for_file: prefer_const_constructors

import 'package:fena_activity/components/rounded_button.dart';
import 'package:fena_activity/components/rounded_input_container.dart';
// ignore: unused_import
import 'package:fena_activity/components/text_input_field.dart';
import 'package:fena_activity/constrants.dart';
// import 'package:fena_activity/controller/dropdown_items_controller.dart';
import 'package:fena_activity/controller/login_form_contorller.dart';
import 'package:fena_activity/views/site-details-components/dropdown_form_field.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

// ignore: use_key_in_widget_constructors, must_be_immutable
class SiteDetailsPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  TextEditingController executionDate = TextEditingController();
  var siteState = "";
  TextEditingController siteDistict = TextEditingController();
  TextEditingController siteVillage = TextEditingController();
  TextEditingController siteLandMark = TextEditingController();
  TextEditingController wallSINo = TextEditingController();

  LoginFormController loginFormController = Get.put(LoginFormController());
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // ignore: sized_box_for_whitespace
    return Container(
      width: double.infinity,
      height: size.height,
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              SizedBox(
                height: size.height * 0.05,
              ),
              Text(
                "Site Details",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFieldContainer(
                      child: TextFormField(
                        readOnly: true,
                        controller: executionDate,
                        decoration: InputDecoration(
                          hintText: 'Pick your Date',
                          hintStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                          label: Text(
                            'Execution date',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: kPrimaryColor,
                            ),
                          ),
                          border: InputBorder.none,
                          icon: Icon(
                            Icons.calendar_today,
                            color: kPrimaryColor,
                            size: size.width * 0.07,
                          ),
                        ),
                        onTap: () async {
                          var date = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2015),
                              lastDate: DateTime(2025));
                          executionDate.text = date.toString().substring(0, 10);
                        },
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    StateDropdownField(),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    TextFieldContainer(
                      child: TextInputField(
                        hintText: 'Enter Distict',
                        lableText: 'Distict',
                        icon: Icons.account_balance,
                        onChange: (String value) {},
                        errorText: 'Please Enter Distict',
                        controllerVar: siteDistict,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    TextFieldContainer(
                      child: TextInputField(
                        hintText: 'Enter village name',
                        lableText: 'Village',
                        icon: Icons.location_city,
                        onChange: (String value) {},
                        errorText: 'Please Enter Distict',
                        controllerVar: siteVillage,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    TextFieldContainer(
                      child: TextInputField(
                        hintText: 'Enter Land Mark',
                        lableText: 'Land Mark',
                        icon: Icons.local_attraction,
                        onChange: (String value) {},
                        errorText: 'Please Enter Distict',
                        controllerVar: siteLandMark,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    SiteDesignDropdownField(),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    TextFieldContainer(
                      child: TextInputField(
                        icon: Icons.confirmation_number,
                        hintText: "Enter Wall SI no.",
                        lableText: "Wall SI No.",
                        onChange: (String val) {},
                        errorText: "Please Enter Wall SI no.",
                        controllerVar: wallSINo,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    SiteSizeDropdownField(),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Obx(
                      () => loginFormController.isLoading.value == true
                          ? CircularProgressIndicator()
                          : RoundedButton(
                              text: 'Submit',
                              press: () {
                                // do somthing
                              },
                            ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
