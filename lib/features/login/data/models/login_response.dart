import 'package:json_annotation/json_annotation.dart';
part 'login_response.g.dart';
@JsonSerializable()
class LoginResponseBody {
  String? messsage;
  @JsonKey(name: 'data')
  UserData? userData;
  bool? status;
  int? code;

  LoginResponseBody({this.messsage, this.userData, this.status, this.code});

  factory LoginResponseBody.fromJson(Map<String, dynamic> json) => _$LoginResponseBodyFromJson(json);
}
@JsonSerializable()
class UserData {
  String? token;
  @JsonKey(name: 'username')
  String? userName;
  UserData({this.token, this.userName});

  factory UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);
}