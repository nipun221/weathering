import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:weathering/model/weather_model.dart';

class WeatherApiClient {
  Future<Weather>? getCurrentWeather(String? location) async {
    var endpoint = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=$location&appid=a864917a33813757b2c229aa2b532c88&units=metric');
    var response = await http.get(endpoint);
    var body = jsonDecode(response.body);
    if (kDebugMode) {
      print(Weather.fromJson(body).cityName);
    }
    return Weather.fromJson(body);
  }
}
