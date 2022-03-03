import 'weather_api.dart';

Future<void> main(List<String> args) async {
  if (args.isEmpty) {
    throw Exception('Syntax: dart /bin/weather_app.dart <city_name>');
  }

  final cityName = args.first;
  final city = await fetchCity(cityName);

  if (city != null) {
    final weather = await fetchWeather(city.id);

    print("Weather for ${city.title}");
    print(weather);

    return;
  } else {
    print("City was not found.");
    return;
  }
}
