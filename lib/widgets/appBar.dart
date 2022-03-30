import 'package:appstore_clone/style/colors.dart';
import 'package:appstore_clone/style/text.dart';
import 'package:appstore_clone/widgets/imageViews/cachedProfile.dart';
import 'package:flutter/material.dart';


class AppBarTitle extends StatelessWidget {
  final String title;
  final String subtiitle;
  final String profileUrl;

  // ignore: use_key_in_widget_constructors
  const AppBarTitle(this.title, {this.subtiitle = "",  this.profileUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ignore: unnecessary_null_comparison
        if(subtiitle != null) Text(subtiitle, style: TextStyles.smallBoldText.apply(color: ColorStyles.primaryLightColor)),
        Container(
          margin: const EdgeInsets.only(top: 8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: TextStyles.titleText),
              // ignore: unnecessary_null_comparison
              if(profileUrl != null)  CachedProfile(profileUrl)
            ],
          ),
        )
      ],
    );
  }
}
