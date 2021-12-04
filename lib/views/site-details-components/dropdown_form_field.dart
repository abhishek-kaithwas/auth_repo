import 'package:fena_activity/components/rounded_input_container.dart';
import 'package:fena_activity/controller/dropdown_items_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constrants.dart';

// ignore: must_be_immutable
class StateDropdownField extends StatelessWidget {
  StateDropdownField({
    Key? key,
  }) : super(key: key);

  StateDropdownController stateDropdownController =
      Get.put(StateDropdownController());

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: Obx(
        () => DropdownButtonFormField(
          value: stateDropdownController.selectedState.value,
          icon: const Icon(
            Icons.arrow_downward,
            color: kPrimaryColor,
          ),
          iconSize: 25,
          elevation: 16,
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.all(10),
            border: InputBorder.none,
          ),
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
            // fontWeight: FontWeight.bold,
          ),
          onChanged: (newValue) {
            // siteState = newValue.toString();
            stateDropdownController.onChangeValue(newValue.toString());
          },
          dropdownColor: Theme.of(context).colorScheme.onBackground,
          focusColor: Colors.yellow,
          // ignore: invalid_use_of_protected_member
          items: stateDropdownController.stateList,
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class SiteDesignDropdownField extends StatelessWidget {
  SiteDesignDropdownField({
    Key? key,
  }) : super(key: key);

  SiteDesignDropdownController siteDesignDropdownController =
      Get.put(SiteDesignDropdownController());

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: Obx(
        () => DropdownButtonFormField(
          value: siteDesignDropdownController.selectedDesign.value,
          icon: const Icon(
            Icons.arrow_downward,
            color: kPrimaryColor,
          ),
          iconSize: 25,
          elevation: 16,
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.all(10),
            border: InputBorder.none,
          ),
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
            // fontWeight: FontWeight.bold,
          ),
          onChanged: (newValue) {
            // siteState = newValue.toString();
            siteDesignDropdownController.onChangeValue(newValue.toString());
          },
          dropdownColor: Theme.of(context).colorScheme.onBackground,
          focusColor: Colors.yellow,
          // ignore: invalid_use_of_protected_member
          items: siteDesignDropdownController.designList,
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class SiteSizeDropdownField extends StatelessWidget {
  SiteSizeDropdownField({
    Key? key,
  }) : super(key: key);

  SiteSizeDropdownController siteSizeDropdownController =
      Get.put(SiteSizeDropdownController());

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: Obx(
        () => DropdownButtonFormField(
            value: siteSizeDropdownController.selectedSize.value,
            icon: const Icon(
              Icons.arrow_downward,
              color: kPrimaryColor,
            ),
            iconSize: 25,
            elevation: 16,
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.all(10),
              border: InputBorder.none,
            ),
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              // fontWeight: FontWeight.bold,
            ),
            onChanged: (newValue) {
              // siteState = newValue.toString();
              siteSizeDropdownController.onChangeValue(newValue.toString());
            },
            dropdownColor: Theme.of(context).colorScheme.onBackground,
            focusColor: Colors.yellow,
            // ignore: invalid_use_of_protected_member
            items: siteSizeDropdownController.sizeList),
      ),
    );
  }
}
