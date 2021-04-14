// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    this.lastLogin,
    this.userStatus,
    this.created,
    this.accountType,
    this.ownerId,
    this.socialAccount,
    this.oAuthIdentities,
    this.name,
    this.userModelClass,
    this.blUserLocale,
    this.userToken,
    this.updated,
    this.email,
    this.objectId,
  });

  int lastLogin;
  String userStatus;
  int created;
  String accountType;
  String ownerId;
  String socialAccount;
  dynamic oAuthIdentities;
  String name;
  String userModelClass;
  String blUserLocale;
  String userToken;
  dynamic updated;
  String email;
  String objectId;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        lastLogin: json["lastLogin"] == null ? null : json["lastLogin"],
        userStatus: json["userStatus"] == null ? null : json["userStatus"],
        created: json["created"] == null ? null : json["created"],
        accountType: json["accountType"] == null ? null : json["accountType"],
        ownerId: json["ownerId"] == null ? null : json["ownerId"],
        socialAccount:
            json["socialAccount"] == null ? null : json["socialAccount"],
        oAuthIdentities: json["oAuthIdentities"],
        name: json["name"] == null ? null : json["name"],
        userModelClass: json["___class"] == null ? null : json["___class"],
        blUserLocale:
            json["blUserLocale"] == null ? null : json["blUserLocale"],
        userToken: json["user-token"] == null ? null : json["user-token"],
        updated: json["updated"],
        email: json["email"] == null ? null : json["email"],
        objectId: json["objectId"] == null ? null : json["objectId"],
      );

  Map<String, dynamic> toJson() => {
        "lastLogin": lastLogin == null ? null : lastLogin,
        "userStatus": userStatus == null ? null : userStatus,
        "created": created == null ? null : created,
        "accountType": accountType == null ? null : accountType,
        "ownerId": ownerId == null ? null : ownerId,
        "socialAccount": socialAccount == null ? null : socialAccount,
        "oAuthIdentities": oAuthIdentities,
        "name": name == null ? null : name,
        "___class": userModelClass == null ? null : userModelClass,
        "blUserLocale": blUserLocale == null ? null : blUserLocale,
        "user-token": userToken == null ? null : userToken,
        "updated": updated,
        "email": email == null ? null : email,
        "objectId": objectId == null ? null : objectId,
      };
}
