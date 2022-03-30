

import 'package:appstore_clone/models/today_model.dart';
import 'package:appstore_clone/widgets/todayListItem.dart';
import 'package:flutter/material.dart';

import '../models/app_model.dart';

class TodayListView extends StatefulWidget {
  const TodayListView({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => TodayListState();
}

class TodayListState extends State<TodayListView> {
  //test data
  final List<Today> _todays = <Today>[
    const SpotlightToday(
        'https://1.bp.blogspot.com/-cDdD9sU3hAE/YZGVJ2WyazI/AAAAAAAAJdU/621nryslGXEvAP6oKPtYh2EcLb5OqAYiwCLcBGAsYHQ/w360-h640/PUBG%2BMobile%2BZombies%2Biphone%2BWallpaper1080.jpg',
        'PUBG \nMOBILE',
        AppInfo(
            'https://sportsnews.page/wp-content/uploads/2021/04/pubg-512x416.png',
            'PUBG MOBILE',
            '#Top Battle Royale ',
            'Mobile Game')),
    const PlainToday(
        'https://images.unsplash.com/photo-1584284807530-cb3c3248adc6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1335&q=80',
        'Mid-Night',
        'Photograhy',
        description: 'Snap Beautiful Pictures'),
    const SpotlightToday(
        'https://images.unsplash.com/photo-1595325281545-e7d6cdd5f95d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2370&q=80',
        'Twitter',
        AppInfo(
            'https://store-images.s-microsoft.com/image/apps.50484.9007199266244427.4d45042b-d7a5-4a83-be66-97779553b24d.2c71c1ea-c28f-4dd1-b72d-c43cdd3476f4?mode=scale&q=90&h=300&w=200',
            'Fortnite',
            'Live news, sports etc',
            'Social Media'
            ))
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: const EdgeInsets.only(top: 8, bottom: 16),
        itemCount: _todays.length,
        itemBuilder: (BuildContext context, int i) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 32),
            child: TodayListItem(_todays[i]),
          );
        });
  }
}
