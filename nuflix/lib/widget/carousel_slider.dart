import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:nugar/model/model_movie.dart';
import 'package:nugar/screen/detail_screen.dart';

class CarouselImage extends StatefulWidget {
  final List<Movie> movies;
  const CarouselImage({Key? key, required this.movies}) : super(key: key);

  @override
  State<CarouselImage> createState() => _CarouselImageState();
}

class _CarouselImageState extends State<CarouselImage> {
  late List<Movie> movies;
  late List<Widget> images;
  late List<String> keywords;
  late List<bool> likes;
  int _currentPage = 0;
  late String _currentKeyword;

  @override
  void initState() {
    super.initState();
    movies = widget.movies;
    images = movies.map((e) => Image.network(e.poster)).toList();
    keywords = movies.map((e) => e.keyword).toList();
    likes = movies.map((e) => e.like).toList();
    _currentKeyword = keywords[0];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            child: CarouselSlider(
              items: images,
              options: CarouselOptions(
                height: 400,
                onPageChanged: ((index, reason) {
                  setState(() {
                    _currentPage = index;
                    _currentKeyword = keywords[_currentPage];
                  });
                }),
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(height: 400),
              Container(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 3),
                child: Text(
                  _currentKeyword,
                  style: TextStyle(fontSize: 11),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          likes[_currentPage]
                              ? IconButton(
                                  onPressed: () {
                                    setState(() {
                                      likes[_currentPage] =
                                          !likes[_currentPage];
                                    });
                                  },
                                  icon: Icon(Icons.check))
                              : IconButton(
                                  onPressed: () {
                                    setState(() {
                                      likes[_currentPage] =
                                          !likes[_currentPage];
                                    });
                                  },
                                  icon: Icon(Icons.add)),
                          Text(
                            '내가 찜한 콘텐츠',
                            style: TextStyle(fontSize: 11),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 10),
                      child: TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.resolveWith(
                              (states) => Colors.white),
                        ),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(Icons.play_arrow, color: Colors.black),
                            Padding(padding: EdgeInsets.all(3)),
                            Text('재생', style: TextStyle(color: Colors.black)),
                            Padding(padding: EdgeInsets.all(4)),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 10),
                      child: Column(
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    fullscreenDialog: true,
                                    builder: (context) {
                                      return DetailScreen(
                                        movie: movies[_currentPage],
                                      );
                                    },
                                  ),
                                );
                              },
                              icon: Icon(Icons.info)),
                          Text('정보', style: TextStyle(fontSize: 11))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: makeIndicator(likes, _currentPage)),
              )
            ],
          ),
        ],
      ),
    );
  }
}

List<Widget> makeIndicator(List list, int _currentPage) {
  List<Widget> results = [];
  for (var i = 0; i < list.length; i++) {
    results.add(
      Container(
        width: 8,
        height: 8,
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentPage == i
                ? Color.fromRGBO(255, 255, 255, 0.9)
                : Color.fromRGBO(255, 255, 255, 0.4)),
      ),
    );
  }

  return results;
}
