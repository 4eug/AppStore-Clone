import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CachedImage extends StatelessWidget {
  const CachedImage(this.url, {Key key}) : super(key: key);
  final String url;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
        placeholder: (context, url) => SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Shimmer.fromColors(
                baseColor: Colors.grey,
                highlightColor: Colors.grey,
                child: Container(
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle, color: Colors.white),
                ),
              ),
            ),
        imageUrl: url,
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover);
  }
}
