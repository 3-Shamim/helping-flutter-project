import 'package:http/http.dart';

class WorldTimeService {
  static Future<Response> getTime(String url) {
    return get("http://worldtimeapi.org/api/timezone/$url");
  }
}
