import 'package:fena_activity/constrants.dart';
// ignore: unused_import
import 'package:fena_activity/views/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      darkTheme: MyTheme.darkTheme(context),
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      // ignore: prefer_const_constructors
      home: Scaffold(
        // ignore: prefer_const_constructors
        // body: SiteDetailsPage(),
        body: LoginPage(),
      ),
    );
  }
}
