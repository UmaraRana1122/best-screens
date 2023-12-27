import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
class NearbyPlacesScreen extends StatefulWidget {
  @override
  _NearbyPlacesScreenState createState() => _NearbyPlacesScreenState();
}

class _NearbyPlacesScreenState extends State<NearbyPlacesScreen> {
  
  final NearbyPlacesApi _placesApi = NearbyPlacesApi(); // Add NearbyPlacesApi instance

  double latitude = 40.6768; // Replace with the desired latitude
  double longitude = 1.27676; // Replace with the desired longitude
  String placeType = 'Resturent'; // Replace with the desired place type

  Map<String, dynamic> nearbyPlacesData = {}; // Add nearby places data

  void _fetchNearbyPlaces() async {
    try {
      final data = await _placesApi.getNearbyPlaces(latitude, longitude, placeType);
      setState(() {
        nearbyPlacesData = data;
        print(nearbyPlacesData);
      });
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchNearbyPlaces(); // Fetch nearby places when the widget is initialized
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nearby Places App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Nearby Places: ${nearbyPlacesData['results']?.length ?? 0}',
              style: TextStyle(fontSize: 24),
            ),
            // Add additional UI elements to display nearby places as needed
          ],
        ),
      ),
    );
  }
}
class NearbyPlacesApi {
  final Dio _dio = Dio();

  final String baseUrl = 'https://maps.googleapis.com/maps/api/place/nearbysearch/json';
  
  final String apiKey = 'AIzaSyBNHwPMuK6J6H5tijAFNDbYYE69JiBPchw'; // Replace with your actual API key

  Future<Map<String, dynamic>> getNearbyPlaces(double latitude, double longitude, String type) async {
    try {
      final response = await _dio.get(
        baseUrl,
        queryParameters: {
          'location': '$latitude,$longitude',
          'radius': '1000', // Radius in meters (adjust as needed)
          'type': type, // e.g., 'restaurant', 'hospital', 'park', etc.
          'key': apiKey,
        },
      );

      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception('Failed to fetch nearby places');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
}
