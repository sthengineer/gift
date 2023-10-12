import 'package:gift/network/response_model.dart';

class ResponseError extends ResponseModel {

/*  static const Map<int, String> errorMessages = {
    400: "Bad Request",
    401: "Unauthorized",
    403: "Forbidden",
    404: "Not Found",
    500: "Internal Server Error",
  };*/

  ResponseError({
    required int statusCode,
    required String statusMessage,
    required dynamic data,
  }) : super(statusCode: statusCode, statusMessage: statusMessage, data: data);

  @override
  String toString() {
    return 'ResponseError{statusCode: $statusCode, statusMessage: $statusMessage, data: $data}';
  }
}