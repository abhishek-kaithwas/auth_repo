import 'package:fena_activity/constrants.dart';
import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      // ignore: prefer_const_constructors
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      // ignore: prefer_const_constructors
      // margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          color: kPrimaryLightColor, borderRadius: BorderRadius.circular(29)),
      child: child,
    );
  }
}
