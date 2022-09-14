import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class WorldTime {
  String location = ''; // location name for the UI
  String time = ''; // the time in that location
  String flag = ''; // url to an asset flag icon
  String url = ''; // location ulr for api endpoint

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    try {
      initializeDateFormatting();
      Response response =
          await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));

      Map data = jsonDecode(response.body);

      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);

      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      time = DateFormat.yMd('de_DE').format(now);
    } catch (error) {
      print(error);
      time = 'keine Daten';
    }
  }
}
