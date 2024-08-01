class Pagination<T> {
  final int? currentPage;
  final int? totalPage;
  final int? pageSize;
  final int? numberOfRecords;
  final int? totalRecords;
  final List<T>? content;

  Pagination({
    this.currentPage,
    this.totalPage,
    this.pageSize,
    this.numberOfRecords,
    this.totalRecords,
    this.content,
  });
  factory Pagination.fromJson(dynamic json) {
    return Pagination(
      currentPage: json['currentPage'] as int?,
      totalPage: json['totalPage'] as int?,
      pageSize: json['pageSize'] as int?,
      numberOfRecords: json['numberOfRecords'] as int?,
      totalRecords: json['totalRecords'] as int?,
      content: json['content'] as List<T>?,
    );
  }
}
