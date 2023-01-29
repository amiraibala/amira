import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:fluttercvlive/model/Projet.dart';
import 'package:fluttercvlive/widget/card_project.dart';
import 'package:fluttercvlive/widget/header.dart';

class ProjetScreen extends StatelessWidget {
  String _language = 'fr';
  List<Projet> _projet = [
    Projet(
        image: '3.png',
        title: '',
        link: ''),
    Projet(
        image: '2.jpg',
        title: '',
        link:
        ''),
    Projet(
        image: '1.png',
        title: '',
        link:
        '')
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: double.infinity,
      width: double.infinity,
      color: Theme.of(context).backgroundColor,
      child: Column(
        children: <Widget>[
          Header(Icon(Icons.phonelink), 'Projets'),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Theme.of(context).canvasColor,
          ),
          Expanded(
            child: Swiper(
              itemBuilder: (BuildContext context, int index) {
                return CardProject(_projet[index].image, _projet[index].title,
                    _projet[index].link);
              },
              itemCount: 3,
              loop: true,
              scrollDirection: Axis.vertical,
              pagination: new SwiperPagination(),
              control: new SwiperControl(),
              viewportFraction: 0.8,
              scale: 0.9,
              itemWidth: 300.0,
              itemHeight: 400.0,
              layout: SwiperLayout.TINDER,
            ),
          )
        ],
      ),
    );
  }
}
