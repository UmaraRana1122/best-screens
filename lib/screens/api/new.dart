import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class MySearch extends StatefulWidget {
  @override
  _MySearchState createState() => _MySearchState();
}

class _MySearchState extends State<MySearch> {
  final SearchApi _searchApi = SearchApi();
  List<Search> movies = [];

  void _fetchMovies() async {
    try {
      final fetchedMovies = await _searchApi.fetchMovies('action');
      setState(() {
        movies = fetchedMovies;
      });
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Title'),
      ),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          final search = movies[index];
          return ListTile(
            title: Text(search.title),
            subtitle: Text('id: ${search.id}'),
            leading:
                search.posterUrl == "" ? null : Image.network(search.posterUrl),
          );
        },
      ),
    );
  }
}

class Search {
  String id;
  String title;
  String posterUrl;
  String type;
  Search({
    required this.id,
    required this.title,
    required this.posterUrl,
    required this.type,
  });

  factory Search.fromJson(Map<String, dynamic> json) {
    return Search(
      id: json['id'],
      title: json['titleText']['text'],
      posterUrl: json['primaryImage']?['url'] ?? "",
      type: json['titleType']['text'],
    );
  }
}

class SearchApi {
  final Dio _dio = Dio();
  final String basicUrl = 'https://moviesdatabase.p.rapidapi.com/';
  final String searchTitle = 'titles/search/title/';

  Future<List<Search>> fetchMovies(String title) async {
    try {
      String url = basicUrl + searchTitle + title;
      final response = await _dio.get(
        url,
        options: Options(
          headers: {
            "X-RapidAPI-Key":
                "60b01a2f94mshcebd41be2dc8211p1805b9jsn5ef194f0cf6a",
            "X-RapidAPI-Host": "moviesdatabase.p.rapidapi.com",
          },
        ),
      );

      if (response.statusCode == 200) {
        var data = response.data["results"];
        if (data != null) {
          final List<Search> movies =
              data.map<Search>((json) => Search.fromJson(json)).toList();
          return movies;
        } else {
          Get.snackbar("Error", response.data["error"]);
          print(response.data["error"]);
        }
      } else {
        throw Exception('Failed to fetch movies');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
    return [];
  }
}
