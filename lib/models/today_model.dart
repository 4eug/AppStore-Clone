
import 'package:appstore_clone/models/app_model.dart';

class Today {
  final String id;
  final String title;
  final int type;

  // ignore: constant_identifier_names
  static const int PLAIN = 0;
  // ignore: constant_identifier_names
  static const int SPOTLIGHT = 1;
  // ignore: constant_identifier_names
  static const int ARTICLE = 2;

  const Today(this.title, this.type, {this.id});
}

class PlainToday extends Today{
  final String imageUrl;
  final String title;
  final String category;
  final String description;

  const PlainToday(this.imageUrl, this.title, this.category, {this.description}) : super(title, Today.PLAIN);
}

class SpotlightToday extends Today{
  final String imageUrl;
  final String title;
  
  final AppInfo appInfo;
  final String description;

  const SpotlightToday(this.imageUrl, this.title, this.appInfo, {this.description}) : super(title, Today.SPOTLIGHT);
}

class ArticleToday extends Today{
  final String imageUrl;
  final String title;
  final String subTitle;
  final String accentText;

  const ArticleToday(this.imageUrl, {this.title, this.subTitle, this.accentText}) : super(title, Today.ARTICLE);
}
