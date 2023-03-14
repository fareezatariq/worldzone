import 'package:flutter/material.dart';
import 'package:worldzone/service/worldtime.dart';
class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  List<WorldTime> locations=[
  WorldTime(location: "London", flag: 'uk.png', URL: 'Europe/London'),
  WorldTime(location: "Berlin", flag: 'germany.png', URL: 'Europe/Berlin'),
  WorldTime(location: "Cairo", flag: 'egypt.png', URL: 'Africa/Cairo'),
  WorldTime(location: "Nairobi", flag: 'kenya.png', URL: 'Africa/Nairobi'),
  WorldTime(location: "Chicago", flag: 'usa.png', URL: 'America/Chicago'),
  WorldTime(location: "New York", flag: 'usa.png', URL: 'America/New_York'),
  WorldTime(location: "Seoul", flag: 'south_korea.png', URL: 'Asia/Seoul'),
  WorldTime(location: "Jakarta", flag: 'indonesia.png', URL: 'Asia/Jakarta'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Location'),
        centerTitle: true,
      ),
body: ListView.builder(
    itemCount: locations.length,
    itemBuilder: (context, index){
      return Padding(
          padding: EdgeInsets.symmetric(horizontal:4.0 , vertical: 1.0),
        child: Card(
          child: ListTile(
            onTap: (){

            },
            leading: CircleAvatar(
              backgroundImage: AssetImage('images/${locations[index].flag}'),
            ),
          ),
        ),
      );
    }),
    );
  }
}
