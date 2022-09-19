import 'package:flutter/material.dart';
import 'package:nugar/model/model_movie.dart';
import 'package:nugar/widget/box_slider.dart';
import 'package:nugar/widget/carousel_slider.dart';
import 'package:nugar/widget/circle_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Movie> movies = [
      Movie.fromMap(
        {
          'title': '보헤미안 랩소디',
          'keyword': '음악/드라마/인물',
          'poster':
              'https://movie-phinf.pstatic.net/20181213_264/1544692854634ss65r_JPEG/movie_image.jpg',
          'like': false
        },
      ),
      Movie.fromMap(
        {
          'title': '사랑의 불시착',
          'keyword': '가슴 뭉클/로맨스/코미디/금지된 사랑/정반대 캐릭터',
          'poster':
              'https://file.mk.co.kr/meet/neds/2019/12/image_readtop_2019_1046822_15762744634013454.jpg',
          'like': false
        },
      ),
      Movie.fromMap(
        {
          'title': '포레스트 검프',
          'keyword': '드라마/외국',
          'poster':
              'https://movie-phinf.pstatic.net/20160901_187/1472711688297YP2jH_JPEG/movie_image.jpg',
          'like': false
        },
      ),
      Movie.fromMap(
        {
          'title': '쇼생크 탈출',
          'keyword': '추리/반전/서스펜스',
          'poster':
              'https://movie-phinf.pstatic.net/20160119_278/14531650465287bcuk_JPEG/movie_image.jpg',
          'like': false
        },
      ),
      Movie.fromMap(
        {
          'title': '라이언 일병 구하기',
          'keyword': '드라마/전쟁/역사',
          'poster':
              'https://movie-phinf.pstatic.net/20111222_4/1324498435937yqCYm_JPEG/movie_image.jpg',
          'like': false
        },
      ),
    ];
    return ListView(
      children: [
        Stack(
          children: [
            CarouselImage(movies: movies),
            TopBar(),
          ],
        ),
        CircleSlider(movies: movies),
        BoxSlider(movies: movies),
      ],
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(
            'images/nuflix_logo.png',
            fit: BoxFit.contain,
            height: 25,
          ),
          Container(
            padding: EdgeInsets.only(right: 1),
            child: Text(
              'TV 프로그램',
              style: TextStyle(fontSize: 14),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 1),
            child: Text(
              '영화',
              style: TextStyle(fontSize: 14),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 1),
            child: Text(
              '내가 찜한 컨텐츠',
              style: TextStyle(fontSize: 14),
            ),
          )
        ],
      ),
    );
  }
}
