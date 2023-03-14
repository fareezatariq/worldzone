import 'package:flutter/material.dart';
import 'package:worldzone/service/worldtime.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setUpWorldTime()async{
    WorldTime instances=WorldTime( flag: 'germany.png', location: 'Berlin', URL: 'Europe/Berlin');
   await instances.getTime();
   Navigator.pushReplacementNamed(context, '/home', arguments: {
     'location': instances.location,
     'flag':instances.flag,
     'URL': instances.URL,
     'isDayTime': instances.isDayTime
   });
  }

  @override
  void initState(){
    super.initState();
    setUpWorldTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
        child: SpinKitPouringHourGlassRefined(
          color: Colors.white,
          size: 80.0,
        ),
      ),
    );
  }
}
