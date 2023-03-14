import 'package:flutter/material.dart';
import 'dart:core';
import 'package:worldzone/screen/loading.dart';
import 'package:worldzone/service/worldtime.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: InkWell(
          onTap: (){
            Navigator.pushNamed(context, '/location');
          },
          child:Container(
        child: Row(
          children: [
            Icon(Icons.location_pin, color: Colors.grey[300]),
            Text('Edit Location', style: TextStyle(
              color: Colors.grey[300],
            ),)
          ],
        ),
              )
        ),
      ),

    );
  }
}
