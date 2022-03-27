import 'package:appstore_clone/widgets/cards/plainCard.dart';
import 'package:appstore_clone/widgets/cards/spotlightCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/today_model.dart';



class TodayListItem extends StatelessWidget {
  final Today item;

  // ignore: use_key_in_widget_constructors
  const TodayListItem(this.item,);

  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
    switch (item.type) {
      case Today.PLAIN:
        return PlainCard(item: item);
      case Today.SPOTLIGHT:
        return SpotlightCard(item: item);
    }
  }
}
