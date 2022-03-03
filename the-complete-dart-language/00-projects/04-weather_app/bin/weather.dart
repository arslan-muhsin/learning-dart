import 'dart:convert';

class Weather {
  final String? weatherStateName;
  final double? minTemp;
  final double? maxTemp;
  final double? currentTemp;

  const Weather(
    this.weatherStateName,
    this.minTemp,
    this.maxTemp,
    this.currentTemp,
  );

  factory Weather.fromJson(Map<String, Object?> json) {
    String? weatherStateName;
    double? minTemp;
    double? maxTemp;
    double? currentTemp;

    var weathers = json["consolidated_weather"] as List<dynamic>;
    final weather = weathers.first;

    if (weather["weather_state_name"] is String) {
      weatherStateName = weather["weather_state_name"] as String;
    }

    if (weather["min_temp"] is double) {
      minTemp = weather["min_temp"] as double;
    }

    if (weather["max_temp"] is double) {
      maxTemp = weather["max_temp"] as double;
    }

    if (weather["the_temp"] is double) {
      currentTemp = weather["the_temp"] as double;
    }

    if (weatherStateName!.isNotEmpty &&
        minTemp != null &&
        maxTemp != null &&
        currentTemp != null) {
      return Weather(weatherStateName, minTemp, maxTemp, currentTemp);
    }

    return Weather(null, null, null, null);
  }

  @override
  String toString() =>
      "$weatherStateName - Min Temp:${minTemp!.toStringAsFixed(0)} - Max Temp:${maxTemp!.toStringAsFixed(0)} - Current Temp:${currentTemp!.toStringAsFixed(0)}";
}
