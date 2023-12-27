import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class MovieListView extends StatefulWidget {
  @override
  _MovieListViewState createState() => _MovieListViewState();
}

class _MovieListViewState extends State<MovieListView> {
  final MovieApi _movieApi = MovieApi();
  List<Movie> movies = [];

  void _fetchMovies() async {
    try {
      final fetchedMovies = await _movieApi.fetchMovies();
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
          final movie = movies[index];
          return ListTile(
            title: Text(movie.title),
            subtitle: Text('id: ${movie.id}'),
            leading: Image.network(movie.posterUrl),
          );
        },
      ),
    );
  }
}

class Movie {
  String id;
  String title;
  String posterUrl;
  String type;
  Movie({
    required this.id,
    required this.title,
    required this.posterUrl,
    required this.type,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      id: json['id'],
      title: json['titleText']['text'],
      posterUrl: json['primaryImage']['url'],
      type: json['titleType']['text'],
    );
  }
}

class MovieApi {
  final Dio _dio = Dio();

  String basicUrl = 'https://moviesdatabase.p.rapidapi.com/';

  // Replace with your movie API URL
  String randomTitles = 'titles/random';
  // MovieApi() {
  //   url = basicUrl + endPoint;
  // }
  ///list: []
  Future<List<Movie>> fetchMovies() async {
    try {
      String url = basicUrl + randomTitles;
      Map<String, String> qParams = {'list': 'most_pop_movies'};
      final response = await _dio.get(
        url,
        queryParameters: qParams,
        options: Options(
          headers: {
            "X-RapidAPI-Key":
                "60b01a2f94mshcebd41be2dc8211p1805b9jsn5ef194f0cf6a",
            "X-RapidAPI-Host": "moviesdatabase.p.rapidapi.com"
          },
        ),
      );

      if (response.statusCode == 200) {
        var data = response.data["results"];
        if (data != null) {
          final List<Movie> movies =
              data.map<Movie>((json) => Movie.fromJson(json)).toList();
          return movies;
        } else {
          Get.snackbar("error", response.data["error"]);
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
