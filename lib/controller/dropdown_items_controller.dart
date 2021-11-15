import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class StateDropdownController extends GetxController {
  List<String> state = [
    "Select State",
    "Andhra Pradesh",
    "Arunachal Pradesh",
    "Assam",
    "Bihar",
    "Chhattisgarh",
    "Goa",
    "Gujarat",
    "Haryana",
    "Himachal Pradesh",
    "Jammu and Kashmir",
    "Jharkhand",
    "Karnataka",
    "Kerala",
    "Madhya Pradesh",
    "Maharashtra",
    "Manipur",
    "Meghalaya",
    "Mizoram",
    "Nagaland",
    "Odisha",
    "Punjab",
    "Rajasthan",
    "Sikkim",
    "Tamil Nadu",
    "Telangana",
    "Tripura",
    "Uttarakhand",
    "Uttar Pradesh",
    "West Bengal",
    "Andaman and Nicobar Islands",
    "Chandigarh",
    "Dadra and Nagar Haveli",
    "Daman and Diu",
    "Delhi",
    "Lakshadweep",
    "Puducherry"
  ];
  // String dropdownValue = state[0];

  var stateList = <DropdownMenuItem<String>>[].obs;

  var stateFirstItem = "".obs;

  @override
  void onInit() {
    // ignore: todo
    // TODO: implement onInit
    super.onInit();

    stateList.value = state.map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    }).toList();
    stateFirstItem.value = state[0];
  }

  onChangeValue(String val) {
    stateFirstItem.value = val;
  }
}

class DropdownContorller extends GetxController {
  // var itemList = <DropdownMenuItem<String>>[].obs;
  var firstItemInList = "Select State".obs;

  setItemList(List<String> items) {
    var itemList = items.map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    }).toList();
    firstItemInList.value = items[0];
    return itemList;
  }

  onChangeValue(String val) {
    firstItemInList.value = val;
  }
}
