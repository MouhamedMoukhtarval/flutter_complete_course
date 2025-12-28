import 'package:json_annotation/json_annotation.dart';
part 'sgin_up_request_body.g.dart';

@JsonSerializable()
class SignUpRequestBody {
  final String name;
  final String email;
  final String phone;
  final String password;
  @JsonKey(name: 'password_confirmation')
  final String confirmPassword;
  final String gender;

  SignUpRequestBody({
    required this.phone,
    required this.confirmPassword,
    required this.gender, 
    required this.name,
    required this.email,
    required this.password,
    }
  );

  Map<String, dynamic> toJson() => _$SignUpRequestBodyToJson(this);
}
