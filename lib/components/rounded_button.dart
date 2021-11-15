import 'package:fena_activity/constrants.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String text;
  final Function press;
  final Color color = kPrimaryColor;
  final Color textColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // ignore: prefer_const_constructors
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.5,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: TextButton(
          onPressed: () {
            press();
          },
          child: Text(
            text.toUpperCase(),
            // ignore: prefer_const_constructors
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
              // ignore: prefer_const_constructors
              EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            ),
            backgroundColor: MaterialStateProperty.all(kPrimaryColor),
            foregroundColor: MaterialStateProperty.all(Colors.white),
          ),
        ),
      ),
    );
  }
}
