import 'package:flutter/material.dart';
import 'package:uiscreens/screens/ManageStore.dart';
import 'package:uiscreens/screens/aboutapp.dart';
import 'package:uiscreens/screens/additionalinformation.dart';
import 'package:uiscreens/screens/catalougue.dart';
import 'package:uiscreens/screens/ordersPage.dart';
import 'package:uiscreens/screens/paymentscreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.blue[900],
    ),
    home: const ManageStore(),
  ));
}
