import 'package:themepages_models/themepages_models.dart';

class InstaPage extends Model<InstaPage> {
  final String handle;
  final int followers;
  final Set<String> imageIds;

  InstaPage({
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

  InstaPage.fromJson(Map<String, dynamic> json)
      : handle = json["handle"],
        followers = json["followersCount"],
        imageIds = json["imageIds"];

  @override
  String className() => "InstagramPage";

  @override
  InstaPage fromJson(Map<String, dynamic> json) => InstaPage.fromJson(json);
}
