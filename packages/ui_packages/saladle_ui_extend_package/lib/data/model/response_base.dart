class ResponseBase {
  final int? code;
  final String? message;
  final String? error;
  final int? totalTime;

  ResponseBase({this.code, this.message, this.error, this.totalTime});

  get data => null;
}
