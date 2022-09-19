class Movie {
  final String title;
  final String keyword;
  final String poster;
  final bool like;

  Movie.fromMap(Map<String, dynamic> map)
      : title = map['title'],
        keyword = map['keyword'],
        poster = map['poster'],
        like = map['like'];

  Movie.fromSnapShot(snapshot)
      : this.fromMap(snapshot.data as Map<String, dynamic>);

  @override
  String toString() => "Movie<$title:$keyword>";
}
