import 'package:flutter/material.dart';
import 'package:fluttercvlive/widget/card_formation.dart';
import 'package:fluttercvlive/widget/header.dart';
import 'package:timeline_list/timeline.dart';
import 'package:timeline_list/timeline_model.dart';

class FormationScreen extends StatelessWidget {
  List<TimelineModel> items = [
    TimelineModel(
        CardFormation('6.png', '2020',
            'Licence en informatique de gestion'),
        position: TimelineItemPosition.left,
        iconBackground: Colors.green,
        icon: Icon(Icons.school)),
    TimelineModel(
        CardFormation('5.jpg', '2022',
            'Master en innovation et gestion de projet'),
        position: TimelineItemPosition.right,
        iconBackground: Colors.redAccent,
        icon: Icon(Icons.school)),
    TimelineModel(
        CardFormation('4.jpg', '2022',
            'IT Software engeiiring'),
        position: TimelineItemPosition.left,
        iconBackground: Colors.blue,
        icon: Icon(Icons.school)),
    TimelineModel(
        CardFormation('8.jpg', '2017', 'Bac Scientifique'),
        position: TimelineItemPosition.right,
        iconBackground: Colors.amber,
        icon: Icon(Icons.school))
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
          Header(Icon(Icons.school), 'Formations'),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Theme.of(context).canvasColor,
          ),
          Expanded(
            child: Timeline(
              lineColor: Theme.of(context).canvasColor,
              children: items,
              position: TimelinePosition.Center,
            ),
          )
        ],
      ),
    );
  }
}
