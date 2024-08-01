import 'response_object.dart';

class ResponseError extends ResponseObject {
  final Map<String, String>? errorDetail;

  ResponseError({int? code, String? message, int? totalTime, this.errorDetail})
      : super(code: code, message: message, totalTime: totalTime);

  factory ResponseError.fromJson(dynamic json) {
    return ResponseError(
      code: json['code'] as int,
      message: json['message'] as String,
      totalTime: json['totalTime'] as int,
      errorDetail: json['errorDetail'] as dynamic,
    );
  }
}
