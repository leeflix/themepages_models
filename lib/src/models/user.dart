import 'package:themepages_models/src/models/language.dart';

import 'model.dart';

class User extends Model<User> {
  bool isAdmin;
  bool isVerified;
  String? firstName;
  String? lastName;
  Language? language;

  User({
    String? id,
    DateTime? created,
    DateTime? updated,
    bool? isArchived,
    required this.isAdmin,
    required this.isVerified,
    required this.firstName,
    required this.lastName,
    required this.language,
  }) : super(
          id: id,
          created: created,
          updated: updated,
          isArchived: isArchived,
        );

  @override
  Map<String, dynamic> toJson() => {
        "isAdmin": isAdmin,
        "isVerified": isVerified,
        "firstName": firstName,
        "lastName": lastName,
        "language": language?.string,
        ...super.toJson(),
      };

  User.fromJson(Map<String, dynamic> json)
      : isAdmin = json["isAdmin"],
        isVerified = json["isVerified"],
        firstName = json["firstName"],
        lastName = json["lastName"],
        language = LanguageExt.fromString(json["language"]),
        super(
          id: json["id"],
          created: DateTime.parse(json["created"]),
          updated: DateTime.parse(json["updated"]),
          isArchived: json["isArchived"],
        );

  String fullName() => "$firstName $lastName";

  @override
  User fromJson(Map<String, dynamic> json) => User.fromJson(json);

  @override
  String className() => "User";
}
