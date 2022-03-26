import 'package:flutter/cupertino.dart';
import 'colors.dart';

class ShadowStyles {
  static BoxShadow lightShadow = BoxShadow(
      color: Colors.primaryDarkLightColor.withOpacity(0.4),
      spreadRadius: 6,
      blurRadius: 16,
      offset: const Offset(0, 8));

  static BoxShadow denseShadow = BoxShadow(
      color: Colors.primaryDarkLightColor.withOpacity(1),
      spreadRadius: 6,
      blurRadius: 10,
      offset: const Offset(0, 8));
}
