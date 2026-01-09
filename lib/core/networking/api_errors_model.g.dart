// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_errors_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiErrorsModel _$ApiErrorsModelFromJson(Map<String, dynamic> json) =>
    ApiErrorsModel(
      message: json['message'] as String?,
      code: (json['code'] as num?)?.toInt(),
      errors: json['data'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$ApiErrorsModelToJson(ApiErrorsModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
      'data': instance.errors,
    };
