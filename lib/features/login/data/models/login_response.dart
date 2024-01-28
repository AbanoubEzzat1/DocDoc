import 'package:json_annotation/json_annotation.dart';
part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  //hav annotation (@JsonKey(name: '---')) or not depends on have a same name in Api or not
  //Becose it have a same name in Api onpostman "message"
  String? message;
  //Becose it have a deffrent name in Api onpostman "data"
  @JsonKey(name: 'data')
  UserData? userData;
  //Becose it have a same name in Api onpostman "status"
  bool? status;
  //Becose it have a same name in Api onpostman "code"
  int? code;

  LoginResponse({this.message, this.userData, this.status, this.code});

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@JsonSerializable()
class UserData {
  //Becose it have a same name in Api onpostman "token"
  String? token;
  //Becose it have a deffrent name in Api onpostman "username"
  @JsonKey(name: 'username')
  String? userName;

  UserData({this.token, this.userName});

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
