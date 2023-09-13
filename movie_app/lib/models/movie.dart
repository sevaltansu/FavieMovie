import 'package:flutter/foundation.dart';

class Movie {
  String title;
  String backDropFile;
  String overView;
  String posterPath;
  String releaseDate;
  double voteAverage;

  Movie({
    required this.title,
    required this.backDropFile,
    required this.overView,
    required this.posterPath,
    required this.releaseDate,
    required this.voteAverage,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      title: json["title"],
      backDropFile: json["backdrop_path"],
      overView: json["overview"],
      posterPath: json["poster_path"],
      releaseDate: json["release_date".toString()],
      voteAverage: json["vote_average"].toDouble(),
    );
  }
}
