import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CachedProfile extends StatelessWidget {
  const CachedProfile(this.url, {Key key}) : super(key: key);
  final String url;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
        child: CachedNetworkImage(
            placeholder: (context, url) => SizedBox(
              width: 34,
              height: 34,
              child: Shimmer.fromColors(
                baseColor: Colors.grey,
                highlightColor: Colors.grey,
                child: Container(decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.white),),
              ),
            ),
            imageUrl: url,
            width: 34,
            height: 34,
            fit: BoxFit.cover
        )
    );
  }
}
