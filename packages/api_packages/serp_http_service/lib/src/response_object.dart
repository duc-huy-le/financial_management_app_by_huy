import 'response_base.dart';

class ResponseObject<T> extends ResponseBase {
  @override
  final T? data;

  ResponseObject({int? code, String? message, int? totalTime, this.data})
      : super(code: code, message: message, totalTime: totalTime);

  factory ResponseObject.fromJson(dynamic json) {
    return ResponseObject(
      code: json['code'] as int,
      message: json['message'] as String,
      totalTime: json['totalTime'] as int,
      data: json['data'] as T,
    );
  }
}
