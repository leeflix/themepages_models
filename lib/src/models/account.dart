import 'package:themepages_models/themepages_models.dart';

class Account extends Model<Account> {
  final String handle;
  final int followers;
  final Set<String> imageIds;

  Account({
    required this.handle,
    required this.followers,
    required this.imageIds,
  });

  @override
  Map<String, dynamic> toJson() => {
        "handle": handle,
        "followersCount": followers,
        "imageIds": imageIds.toList(),
        ...super.toJson(),
      };

  Account.fromJson(Map<String, dynamic> json)
      : handle = json["handle"],
        followers = json["followersCount"],
        imageIds = Set<String>.from(json["imageIds"]),
        super(
          id: json["id"],
          created: DateTime.parse(json["created"]),
          updated: DateTime.parse(json["updated"]),
          isArchived: json["isArchived"],
        );

  @override
  String className() => "Account";

  @override
  Account fromJson(Map<String, dynamic> json) => Account.fromJson(json);
}
