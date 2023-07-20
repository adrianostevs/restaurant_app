// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_APIError _$$_APIErrorFromJson(Map<String, dynamic> json) => _$_APIError(
      statusCode: json['statusCode'] as int,
      message: const APIErrorMessagesConverter().fromJson(json['message']),
    );

Map<String, dynamic> _$$_APIErrorToJson(_$_APIError instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': const APIErrorMessagesConverter().toJson(instance.message),
    };
