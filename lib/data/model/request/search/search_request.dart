import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_request.g.dart';
part 'search_request.freezed.dart';

@freezed
class SearchRequest with _$SearchRequest {
  factory SearchRequest({
    String? q,
  }) = _SearchRequest;

  factory SearchRequest.fromJson(Map<String, dynamic> json) =>
      _$SearchRequestFromJson(json);
}
