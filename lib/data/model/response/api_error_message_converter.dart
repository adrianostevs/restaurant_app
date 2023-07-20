import 'package:json_annotation/json_annotation.dart';

class APIErrorMessagesConverter implements JsonConverter<String, dynamic> {
  const APIErrorMessagesConverter();

  @override
  String fromJson(json) {
    if (json != null && json is List) {
      final first = json.first["constraints"];
      if (first != null) {
        final constraints = first as Map<String, dynamic>;
        return constraints.entries.first.value;
      } else {
        return "Bad Request";
      }
    } else if (json == null) {
      return "Bad Request";
    } else {
      return json;
    }
  }

  @override
  dynamic toJson(String object) {
    return object;
  }
}
