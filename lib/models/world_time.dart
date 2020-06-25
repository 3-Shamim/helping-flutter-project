import 'dart:convert';

import 'package:flutterapp/services/world_time_service.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

class WorldTime {
  String _location;
  String _time;
  String _flag;
  String _url;
  bool _isDayTime;

  WorldTime(this._location, this._time, this._flag, this._url, this._isDayTime);

  String get url => _url;

  String get flag => _flag;

  String get time => _time;

  String get location => _location;

  bool get isDayTime => _isDayTime;

  Future<void> getTime() async {

    try {
      Response response = await WorldTimeService.getTime(_url);

      Map data = jsonDecode(response.body);
//    print(data);

      // get properties from data
      String datetime = data["datetime"];
      String offset = data["utc_offset"].substring(1, 3);
//    print(datetime);
//    print(offset);

      //create DateTime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));
//    print(now);

      _isDayTime = now.hour > 6 && now.hour < 20 ? true: false;
      _time = DateFormat.jm().format(now);
    } catch (e) {
      _time = "could not get the time";
    }
  }
}
