class JsonReturnErrorModel {
  final String message;
  final int code;
  final Errors errors;


  JsonReturnErrorModel.fromJson(Map<String,dynamic> parsedJson)
  : code = parsedJson['code'] as int,
  message = parsedJson['message'] as String,
  errors = parsedJson['errors'] as Errors;
}


class Errors {
  final String field, message;

  Errors.fromJson(Map<String, dynamic> parsedJson)
  : field = parsedJson['field'] as String,
  message = parsedJson['message'] as String;
}