import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:gift/util/app_error.dart';
import 'package:gift/network/api_constants.dart';
import 'package:gift/network/response_model.dart';
import 'package:gift/network/response_error.dart';

class DioNetworkModule {
  final Dio dio = Dio();

  DioNetworkModule({
    required Map<String, dynamic> headers,
    Duration connectTimeout = const Duration(milliseconds: 10000),
    Duration receiveTimeout = const Duration(milliseconds: 10000),
  }) {
    dio.options.baseUrl = ApiConstants.baseURL;
    dio.options.headers = headers;
    dio.options.connectTimeout = connectTimeout;
    dio.options.receiveTimeout = receiveTimeout;
  }

  Future<ResponseModel> get(String endpoint) async {
    final String url = ApiConstants.baseURL + endpoint;
    try {
      final response = await dio.get(url);
      print(url);
      return ResponseModel(
        statusCode: response.statusCode!,
        statusMessage: response.statusMessage,
        data: response.data,
      );
    } catch (error) {
      if (error is DioException) {
        return ResponseError(
          statusCode: error.response?.statusCode ?? 500,
          statusMessage: error.response?.statusMessage ?? "Internal Server Error",
          data: error.message,
        );
      } else {
        throw AppError(error.toString());
      }
    }
  }

  Future<ResponseModel> post(String endpoint, Map<String, dynamic> body) async {
    final String url = ApiConstants.baseURL + endpoint;
    final response = await dio.post(url, data: jsonEncode(body));
    try {
      return ResponseModel(
        statusCode: response.statusCode!,
        statusMessage: response.statusMessage,
        data: response.data,
      );
    } catch (error) {
      if (error is DioException) {
        return ResponseError(
          statusCode: error.response?.statusCode ?? 500,
          statusMessage: error.response?.statusMessage ?? "Internal Server Error",
          data: error.message,
        );
      } else {
        throw AppError(error.toString());
      }
    }
  }
}

class GetRequest {
  final DioNetworkModule dioNetworkModule;
  final String endpoint;

  const GetRequest(this.dioNetworkModule, this.endpoint);

  Future<ResponseModel> execute() async {
    return await dioNetworkModule.get(endpoint);
  }
}

class PostRequest {
  final DioNetworkModule dioNetworkModule;
  final String endpoint;
  final Map<String, dynamic> body;

  const PostRequest(this.dioNetworkModule, this.endpoint, this.body);

  Future<ResponseModel> execute() async {
    return await dioNetworkModule.post(endpoint, body);
  }
}
