import 'package:flutter/material.dart';
import 'package:worldzone/screen/home.dart';
import 'package:worldzone/screen/location.dart';
import 'package:worldzone/screen/loading.dart';
void main() => runApp(MaterialApp(
debugShowCheckedModeBanner: false,
  initialRoute: "/",
  routes: {
'/': (context) => Loading(),
'/home': (context) => Home(),
'/location':(context) => Location(),
},
));