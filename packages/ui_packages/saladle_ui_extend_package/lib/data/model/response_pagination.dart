import 'response_base.dart';
import 'pagination.dart';

class ResponsePagination<T> extends ResponseBase {
  @override
  final Pagination<T>? data;

  ResponsePagination({int? code, String? message, int? totalTime, this.data})
      : super(code: code, message: message, totalTime: totalTime);

  ResponsePagination<T> copyWith({
    Pagination<T>? data,
  }) {
    return ResponsePagination<T>(
      data: data ?? this.data,
    );
  }

  factory ResponsePagination.fromJson(dynamic json) {
    return ResponsePagination<T>(
      code: json.code as int,
      message: json.message as String,
      totalTime: json.totalTime,
      data: json.data as Pagination<T>,
    );
  }

  @override
  String toString() => 'ResponsePagination(data: $data)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ResponsePagination<T> && other.data == data;
  }

  @override
  int get hashCode => data.hashCode;
}
