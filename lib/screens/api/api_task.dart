import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class WeatherView extends StatefulWidget {
  @override
  _WeatherViewState createState() => _WeatherViewState();
}

class _WeatherViewState extends State<WeatherView> {
  // api.openweathermap.org/data/2.5/forecast/daily?lat=33.6768&lon=1.27676&cnt=Pakistan&appid=b215becd98b8da2d6df5de35970616a8
  final WeatherApi _weatherApi = WeatherApi();
  String cityName = 'Faisalabad'; // Replace with your desired city

  Map<String, dynamic> weatherData = {};
  

  void _fetchWeather() async {
    try {
      final data = await _weatherApi.getWeatherByCityName(cityName);
      setState(() {
        weatherData = data;
        print(weatherData);
      });
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'City: ${weatherData['name'] ?? ''}',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              'Temperature: ${weatherData['main']['temp'] ?? ''}°C',
              style: TextStyle(fontSize: 24),
            ),
             
            Text(
              'Description: ${weatherData['weather'][0]['description'] ?? ''}',
              style: TextStyle(fontSize: 24),
            ),
            
          ],
        ),
      ),
    );
  }
}

class WeatherApi {
  final Dio _dio = Dio();

  final String baseUrl = 'https://api.openweathermap.org/data/2.5/weather/';
  final String apiKey =
      'b215becd98b8da2d6df5de35970616a8'; // Replace with your actual API key

  Future<Map<String, dynamic>> getWeatherByCityName(String cityName) async {
    try {
      final response = await _dio.post(
        baseUrl,
        queryParameters: {
          'q': cityName,
          'appid': apiKey,
        },
      );

      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception('Failed to fetch weather data');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
}
