import 'dart:async';

// Define a class to hold weather data
class WeatherData {
  final String weather;
  final int temperature;
  final int humidity;

  WeatherData(
      {required this.weather,
      required this.temperature,
      required this.humidity});

  @override
  String toString() {
    return 'Weather: $weather, Temperature: $temperature°C, Humidity: $humidity%';
  }
}

Future<WeatherData> fetchWeatherData() async {
  await Future.delayed(const Duration(seconds: 3));
  // Return the weather data
  return WeatherData(
    weather: 'Sunny',
    temperature: 25,
    humidity: 60,
  );
}

void main() async {
  try {
    // Call the fetchWeatherData function and print the weather details
    final WeatherData weatherData = await fetchWeatherData();
    print('Weather Details: $weatherData');
  } catch (e) {
    // Handle any errors that occur during the execution
    print('Error fetching weather data: $e');
  }
}
