
class ResponseModel {
  final int statusCode;
  final String? statusMessage;
  final dynamic data;

  ResponseModel(
      {required this.statusCode,
        required this.statusMessage,
        required this.data});

  @override
  String toString() {
    return 'Response{statusCode: $statusCode, statusMessage: $statusMessage, data: $data}';
  }
}