import 'package:flutter/material.dart';
import 'package:nugar/model/model_movie.dart';
import 'package:nugar/screen/detail_screen.dart';
import 'package:nugar/util.dart';

class LikeScreen extends StatefulWidget {
  const LikeScreen({Key? key}) : super(key: key);

  @override
  State<LikeScreen> createState() => _LikeScreenState();
}

class _LikeScreenState extends State<LikeScreen> {
  final TextEditingController _filter = TextEditingController();
  FocusNode focusNode = FocusNode();
  String _searchText = "";

  _LikeScreenState() {
    _filter.addListener(() {
      setState(() {
        _searchText = _filter.text;
      });
    });
  }

  Widget _buildList(BuildContext context) {
    List<Movie> movies = MovieData().movies;
    List<Movie> searchResults = [];

    for (Movie d in movies) {
      if (d.toString().contains(_searchText)) {
        searchResults.add(d);
      }
    }

    return Expanded(
      child: GridView.count(
          crossAxisCount: 3,
          childAspectRatio: 1 / 1.5,
          padding: EdgeInsets.all(3),
          children: searchResults
              .map((movies) => _buildListItem(context, movies))
              .toList()),
    );
  }

  Widget _buildListItem(BuildContext context, Movie result) {
    return InkWell(
      child: Image.network(result.poster),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute<Null>(
            fullscreenDialog: true,
            builder: (BuildContext context) {
              return DetailScreen(movie: result);
            }));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(20, 27, 20, 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  'images/nuflix_logo.png',
                  fit: BoxFit.contain,
                  height: 25,
                ),
                Container(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    '내가 찜한 콘텐츠',
                    style: TextStyle(fontSize: 14),
                  ),
                )
              ],
            ),
          ),
          _buildList(context)
        ],
      ),
    );
  }
}
