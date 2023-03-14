import 'dart:convert';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

class WorldTime{
  String? time;
  String? flag;
  String? URL;
  String? location;
  bool? isDayTime;
  WorldTime({required this.isDayTime, required this.flag, required this.location, required this.URL});

  Future<void> getTime()async{
    try{
      String url= "http://worldtimeapi.org/api/timezone/$URL";
      Response response= await get(Uri.parse(url));
      Map data= jsonDecode(response.body);
      String datetime= data['datetime'];
      String offset= data['utc_offset'].substring(1,3);
      DateTime now= DateTime.parse(datetime);
      now= now.add(Duration(hours:int.parse(offset)));
      isDayTime= now.hour > 6 && now.hour < 20? true: false;
      time= DateFormat.jm().format(now);
    }
    catch(e){
      print('Caught Error: $e');
      print('Error Alert!');
      }
  }

}