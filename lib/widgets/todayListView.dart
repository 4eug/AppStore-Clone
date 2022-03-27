

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
        'https://lh3.googleusercontent.com/gsbOVolF0SetvVXYh8rSSDjW5pFwx4F40dg20Hhj6617fI6W-q5aXwZxIMbR2cYJmgYRZV8z8Egzz4-quVZc3WZdH3pL7bScl5LNj1sqmtJNWD3xQbzRDkj0V5SZdPFA68XX7qsO',
        'Mad Hot \nLava',
        AppInfo(
            'https://is1-ssl.mzstatic.com/image/thumb/Purple113/v4/7c/d7/66/7cd766cf-c775-08e1-49ae-2d5611376450/AppIcon-0-0-1x_U007emarketing-0-0-0-7-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/246x0w.png',
            'Hot Lava',
            'Exclusive Game')),
    const PlainToday(
        'https://images.unsplash.com/photo-1592651595884-957a8f9c1d52?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
        'Mid-Night',
        'Photograhy',
        description: 'Snap Beautiful Pictures'),
    const SpotlightToday(
        'https://ayo.news/wp-content/uploads/2020/05/Fortnite-1.jpg',
        'Fortnite',
        AppInfo(
            'https://is1-ssl.mzstatic.com/image/thumb/Purple113/v4/6d/9d/59/6d9d5931-e300-fa8f-df4f-0087932d0989/AppIcon-1x_U007emarketing-0-0-GLES2_U002c0-512MB-sRGB-0-0-0-85-220-0-0-0-6.png/400x400.png',
            'Fortnite',
            'Exclusive Game'))
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
