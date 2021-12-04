import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kPrimaryColor = Color(0xFF6F35A5);
const kPrimaryLightColor = Color(0xFFF1E6FF);

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        brightness: Brightness.light,
        fontFamily: GoogleFonts.poppins().fontFamily,
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme(
          primary: Colors.white,
          primaryVariant: Colors.grey.shade100,
          secondary: Colors.white,
          secondaryVariant: Colors.white,
          surface: Colors.white,
          background: Colors.white,
          error: Colors.white,
          onPrimary: Colors.black,
          onSecondary: kPrimaryColor,
          onSurface: Colors.white,
          onBackground: Colors.white,
          onError: Colors.white,
          brightness: Brightness.light,
        ),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        fontFamily: GoogleFonts.poppins().fontFamily,
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
        colorScheme: ColorScheme(
          primary: Colors.white,
          primaryVariant: Colors.grey.shade100,
          secondary: Colors.white,
          secondaryVariant: Colors.white,
          surface: Colors.white,
          background: Colors.white,
          error: Colors.white,
          onPrimary: Colors.black,
          onSecondary: Colors.white,
          onSurface: Colors.white,
          onBackground: Colors.white,
          onError: Colors.white,
          brightness: Brightness.dark,
        ),
      );
}

// List<String> stateList = [
//   "Select State",
//   "Andhra Pradesh",
//   "Arunachal Pradesh",
//   "Assam",
//   "Bihar",
//   "Chhattisgarh",
//   "Goa",
//   "Gujarat",
//   "Haryana",
//   "Himachal Pradesh",
//   "Jammu and Kashmir",
//   "Jharkhand",
//   "Karnataka",
//   "Kerala",
//   "Madhya Pradesh",
//   "Maharashtra",
//   "Manipur",
//   "Meghalaya",
//   "Mizoram",
//   "Nagaland",
//   "Odisha",
//   "Punjab",
//   "Rajasthan",
//   "Sikkim",
//   "Tamil Nadu",
//   "Telangana",
//   "Tripura",
//   "Uttarakhand",
//   "Uttar Pradesh",
//   "West Bengal",
//   "Andaman and Nicobar Islands",
//   "Chandigarh",
//   "Dadra and Nagar Haveli",
//   "Daman and Diu",
//   "Delhi",
//   "Lakshadweep",
//   "Puducherry"
// ];

// List<String> siteDesignList = ["Select Design", "FENA", "NIP", "IMPACT"];
