import 'dart:convert';
import 'package:http/http.dart' as http;

import 'city.dart';
import 'weather.dart';

const String baseUrl = 'https://www.metaweather.com/api/location';

Future<City?> fetchCity(String cityName) async {
  var uri = Uri.parse("$baseUrl/search/?query=$cityName");
  var response = await http.get(uri);

  try {
    return City.fromJson(jsonDecode(response.body));
  } catch (_) {
    return null;
  }
}

Future<Weather?> fetchWeather(int cityId) async {
  var uri = Uri.parse("$baseUrl/$cityId");
  var response = await http.get(uri);

  try {
    return Weather.fromJson(jsonDecode(response.body));
  } catch (_) {
    return null;
  }
}
