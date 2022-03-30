import 'dart:ui';

import 'package:appstore_clone/models/today_model.dart';
import 'package:appstore_clone/style/colors.dart';
import 'package:appstore_clone/style/text.dart';
import 'package:appstore_clone/widgets/imageViews/cachedImage.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

class SpotlightCard extends StatelessWidget {
  const SpotlightCard({
    Key key,
    @required this.item,
  }) : super(key: key);

  final SpotlightToday item;

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
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 280),
                          child:   Text(item.title, style: TextStyles.mediumHeavyText.apply(color: Colors.white)),
                              ),
                      
                      AppInfoWidget(item)
                    ],
                  ),
                ),
              ],
            )),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            boxShadow: [
              BoxShadow(
                  color: Colors.black38.withOpacity(0.6),
                  spreadRadius: 0,
                  blurRadius: 16,
                  offset: const Offset(0, 6))
            ]),
      ),
    );
  }
}

class AppInfoWidget extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const AppInfoWidget(this.item);

  final SpotlightToday item;

  @override
  _AppInfoWidgetState createState() => _AppInfoWidgetState();
}

class _AppInfoWidgetState extends State<AppInfoWidget> {
  Color backColor = Colors.white;

  @override
  void initState() {
    super.initState();
    setBackgroundColor(CachedNetworkImageProvider(widget.item.imageUrl));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 74,
      child: ClipRect(
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                color: backColor.withOpacity(0.8),
              ),
            ),
            Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.only(left: 20),
                    height: 52,
                    width: 52,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: CachedImage(widget.item.appInfo.thumbnailUrl),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        widget.item.appInfo.name,
                        style: TextStyles.smallBoldText.apply(color: Colors.white),
                      ),
                      Text(
                        widget.item.appInfo.description,
                        style: TextStyles.descriptionLightText.apply(color: Colors.white),
                      ),Text(
                        widget.item.appInfo.subdescription,
                        style: TextStyles.descriptionLightText.apply(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                margin: const EdgeInsets.only(right: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Container(
                    height: 26,
                    width: 66,
                    color: Colors.white,
                    child: Center(child: Text('GET', style: TextStyles.buttonExtraBoldText.apply(color: ColorStyles.accentColor),)),
                  ),
                ),
              ),
            )
          ],
        ),
      )
    );
  }

  setBackgroundColor(ImageProvider imageProvider) async {
    final PaletteGenerator paletteGenerator =
        await PaletteGenerator.fromImageProvider(imageProvider);

    setState(() {
      backColor = paletteGenerator.dominantColor.color;
    });
  }
}

