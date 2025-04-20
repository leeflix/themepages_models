import 'package:themepages_models/themepages_models.dart';

class Page extends Model<Page> {
  final String handle;
  final int followers;
  final Set<String> imageIds;

  Page({
    required this.handle,
    required this.followers,
    required this.imageIds,
  });

  @override
  Map<String, dynamic> toJson() => {
        "handle": handle,
        "followersCount": followers,
        "imageId": imageIds,
      };

  Page.fromJson(Map<String, dynamic> json)
      : handle = json["handle"],
        followers = json["followersCount"],
        imageIds = json["imageIds"];

  @override
  String className() => "InstagramPage";

  @override
  Page fromJson(Map<String, dynamic> json) => Page.fromJson(json);
}
