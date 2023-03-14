import 'package:flutter/material.dart';
import 'package:worldzone/screen/home.dart';
import 'package:worldzone/screen/location.dart';
import 'package:worldzone/screen/loading.dart';
void main() => runApp(MaterialApp(

  initialRoute: "/home",
  routes: {
'/': (contect) => Loading(),
'/home': (contect) => Home(),
'location':(contect) => Location()
}
));