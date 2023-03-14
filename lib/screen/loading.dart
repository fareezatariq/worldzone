import 'package:flutter/material.dart';
import 'package:worldzone/service/worldtime.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}


class _LoadingState extends State<Loading> {

  void setUpWorldTime() async{
    WorldTime instance= WorldTime(location: 'Berlin', flag: 'germany.png', URL:'Europe/Berlin');
    await instance.getTime();

    Navigator.pushReplacementNamed(context, '/home', arguments: {
      "location": instance.location,
      "flag": instance.flag,
      "time": instance.time,
      "isDayTime": instance.isDayTime
    });
    // Navigator.pushReplacementNamed(context, '/home', arguments: {
    //   'location': instance.location,
    //   'flag': instance.flag,
    //   'time': instance.time,
    // });
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
        )
    );
  }
}
