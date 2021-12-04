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

  var selectedState = "".obs;

  @override
  void onInit() {
    super.onInit();

    stateList.value = state.map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    }).toList();
    selectedState.value = state[0];
  }

  onChangeValue(String val) {
    selectedState.value = val;
  }
}

class SiteDesignDropdownController extends GetxController {
  List<String> siteDesignList = ["Select Design", "FENA", "NIP", "IMPACT"];
  var designList = <DropdownMenuItem<String>>[].obs;
  var selectedDesign = "".obs;

  @override
  void onInit() {
    super.onInit();

    designList.value =
        siteDesignList.map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    }).toList();
    selectedDesign.value = siteDesignList[0];
  }

  onChangeValue(String val) {
    selectedDesign.value = val;
  }
}

class SiteSizeDropdownController extends GetxController {
  List<String> siteSizeList = ["Select Size", "10 x 5 ft.", "8 x 4 ft."];
  var sizeList = <DropdownMenuItem<String>>[].obs;
  var selectedSize = "".obs;

  @override
  void onInit() {
    super.onInit();

    sizeList.value = siteSizeList.map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    }).toList();
    selectedSize.value = siteSizeList[0];
  }

  onChangeValue(String val) {
    selectedSize.value = val;
  }
}


// class DropdownContorller extends GetxController {
//   // var itemList = <DropdownMenuItem<String>>[].obs;
//   var firstItemInList = "Select State".obs;

//   setItemList(List<String> items) {
//     var itemList = items.map<DropdownMenuItem<String>>((String value) {
//       return DropdownMenuItem<String>(
//         value: value,
//         child: Text(value),
//       );
//     }).toList();
//     firstItemInList.value = items[0];
//     return itemList;
//   }

//   onChangeValue(String val) {
//     firstItemInList.value = val;
//   }
// }
