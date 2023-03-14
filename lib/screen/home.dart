import 'package:flutter/material.dart';
import 'dart:core';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var data;
  @override
  Widget build(BuildContext context) {
    data= data!=null ? data : ModalRoute.of(context)!.settings.arguments;
    print(data);
    //set background
    String bgImage=data['isDayTime'] ? 'day.jpg': 'night.jpg';
    Color? bgColor = data['isDayTime'] ? Colors.blue : Colors.indigo[700];
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/$bgImage'),
                fit: BoxFit.cover,
              )
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 120.0, 0,0),
            child: Column(
              children: <Widget> [
                InkWell(
                  onTap: ()async{
                    dynamic result= await Navigator.pushNamed(context, '/location');
                    setState(() {
                      data={
                        'time' : result['time'],
                        'location':  result['location'],
                        'isDayTime': result['isDayTime'],
                        'flag': result['flag'],
                      };
                    });
                  },
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.location_pin,
                          color: Colors.grey[300],),
                        Text('Edit Location', style: TextStyle(
                          color: Colors.grey[100],
                        ),)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(data['location'], style:TextStyle(
                      fontSize: 28.0,
                      letterSpacing: 2.0,
                      color: Colors.white,
                    )),
                  ],),
                SizedBox(height: 20.0,),
                Text(
                  data['time'], style: TextStyle(
                    fontSize: 66.0,color: Colors.white
                ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}