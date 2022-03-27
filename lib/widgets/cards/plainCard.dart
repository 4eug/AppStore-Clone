import 'package:appstore_clone/style/text.dart';
import 'package:flutter/material.dart';
import '../../models/today_model.dart';
import '../imageViews/cachedImage.dart';

class PlainCard extends StatelessWidget {
  const PlainCard({
     Key key,
    this.item,
  }) : super(key: key);

  final PlainToday item;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 420,
      child: Container(
        child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Stack(
              children: [
                CachedImage(item.imageUrl),
                Container(
                    margin: const EdgeInsets.fromLTRB(24, 24, 0, 0),
                    child: _CardTitle(item: item, )),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    margin: const EdgeInsets.all(24),
                    child: Text(item.description, style: TextStyles.smallLightText.apply(color: Colors.white),),
                  ),
                )
              ],
            )),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            boxShadow: [
              BoxShadow(
                  color: Colors.black38.withOpacity(0.6),
                  spreadRadius: 0,
                  blurRadius: 16,
                  offset: const Offset(0, 8))
            ]),
      ),
    );
  }
}

class _CardTitle extends StatelessWidget {
  const _CardTitle({
     Key key,
    this.item,
  }) : super(key: key);

  final PlainToday item;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ignore: unnecessary_null_comparison
        if (item.category != null)
          Text(item.category,
              style: TextStyles.smallBoldText
                  .apply(color: Colors.white.withOpacity(0.8))),
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Text(item.title,
              style: TextStyles.mediumHeavyText.apply(color: Colors.white)),
        ),
      ],
    );
  }
}
