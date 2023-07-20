import 'package:freezed_annotation/freezed_annotation.dart';

import 'api_error_message_converter.dart';

part 'api_error.g.dart';
part 'api_error.freezed.dart';

@freezed
class APIError with _$APIError {
  const factory APIError({
    required int statusCode,
    @APIErrorMessagesConverter() required String message,
  }) = _APIError;

  factory APIError.fromJson(Map<String, dynamic> json) =>
      _$APIErrorFromJson(json);
}
