import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MovieApp());
}

class movieInfo {
  final adult,
      backdropPath,
      genreIds,
      id,
      originalLanguage,
      originalTitle,
      overview,
      popularity,
      posterPath,
      releaseDate,
      title,
      video,
      voteAverage,
      voteCount;

  movieInfo.fromJson(Map<String, dynamic> json)
      : adult = json['adult'],
        backdropPath = json['backdrop_path'],
        genreIds = json['genre_ids'],
        id = json['id'],
        originalLanguage = json['original_language'],
        originalTitle = json['original_title'],
        overview = json['overview'],
        popularity = json['popularity'],
        posterPath = json['poster_path'],
        releaseDate = json['release_date'],
        title = json['title'],
        video = json['video'],
        voteAverage = json['vote_average'],
        voteCount = json['vote_count'];
}

class MovieGenreInfo {
  final List<dynamic> genres;
  MovieGenreInfo.fromJson(Map<String, dynamic> json) : genres = json['genres'];
}

class MovieSection {
  static const String popular = "popular";
  static const String nowPlaying = "now-playing";
  static const String comingSoon = "coming-soon";
}

class MovieApi {
  static const String baseUrl = "https://movies-api.nomadcoders.workers.dev";
  static const String baseImageUrl = "https://image.tmdb.org/t/p/w500/";

  static Future<List<MovieInfo>> getMovies(String kind) async {
    List<MovieInfo> moviesInstance = [];

    final url = Uri.parse('$baseUrl/$kind');

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseJson = jsonDecode(response.body);
      final List<dynamic> movies = responseJson['results'];
      for (var movie in movies) {
        moviesInstance.add(MovieInfo.fromJson(movie));
      }
      return moviesInstance;
    }
    throw Error();
  }

  static Future<MovieGenreInfo> getMovie(int id) async {
    final url = Uri.parse('$baseUrl/movie?id=$id');

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final dynamic genres = jsonDecode(response.body);
      return MovieGenreInfo.fromJson(genres);
    }
    throw Error();
  }
}

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MovieWidget(),
    );
  }
}

class MovieWidget extends StatefulWidget {
  const MovieWidget({super.key});

  @override
  State<MovieWidget> createState() => _MovieWidgetState();
}

class _MovieWidgetState extends State<MovieWidget> {
  late final Future<List<MovieInfo>> popularMovies;
  late final Future<List<MovieInfo>> nowPlayingMovies;
  late final Future<List<MovieInfo>> comingSoonMovies;

  @override
  void initState() {
    super.initState();
    popularMovies = MovieApi.getMovies(MovieSection.popular);
    nowPlayingMovies = MovieApi.getMovies(MovieSection.nowPlaying);
    comingSoonMovies = MovieApi.getMovies(MovieSection.comingSoon);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

class MakeMovies extends StatelessWidget {
  final double aspectRatio;
  final double height;
  const MakeMovies({
    Key? key,
    required this.movies,
    required this.aspectRatio,
    required this.height,
  }) : super(key: key);

  final Future<List<MovieInfo>> movies;

  void _onMovieTap(BuildContext context, MovieInfo movie) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => MovieDetail(
          id: movie.id,
          title: movie.title,
          overview: movie.overview,
          voteAverage: movie.voteAverage,
          backdropPath: '${MovieApi.baseImageUrl}${movie.backdropPath}',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

class MovieDetail extends StatefulWidget {
  final String title, backdropPath, overview;
  final int id;
  final num voteAverage;

  const MovieDetail({
    super.key,
    required this.title,
    required this.backdropPath,
    required this.overview,
    required this.id,
    required this.voteAverage,
  });

  @override
  State<MovieDetail> createState() => _MovieDetailState();
}

class _MovieDetailState extends State<MovieDetail> {
  bool isGreen = Random().nextBool();

  late final int fullStar;
  late final bool hasHalfStar;

  late final Future<MovieGenreInfo> genres;

  void _backToHome(BuildContext context) {
    Navigator.of(context).pop();
  }

  @override
  void initState() {
    super.initState();
    genres = MovieApi.getMovie(widget.id);
    fullStar = (widget.voteAverage / 2).floor();
    hasHalfStar = (widget.voteAverage / 2 - fullStar).round() == 1;
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
