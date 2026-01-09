import 'package:app_serving_doctors/core/helpers/extensions.dart';
import 'package:json_annotation/json_annotation.dart';
part 'api_errors_model.g.dart';


@JsonSerializable()
class ApiErrorsModel {
  final String? message;
  final int? code;
  @JsonKey(name: 'data')
  final Map<String, dynamic>? errors;

  ApiErrorsModel({this.message, this.code, this.errors});

  factory ApiErrorsModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorsModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorsModelToJson(this);

  String getAllErrorsMessages() {
    if (errors.isNullOrEmpty()) return message ?? "Unknown Error";
    final errorsMessages = errors!.entries
        .map((entry) {
          final value = entry.value;
          return "${value.join(",")}";
        })
        .join("\n");
    return errorsMessages;
  }
}
