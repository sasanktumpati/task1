import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:task1/logger/log_tags.dart';
import 'package:task1/logger/logger.dart';
import 'package:task1/services/networking/models/response/response_model.dart';
import '../../utils/constants.dart';

part 'api_service.g.dart';

@Riverpod(keepAlive: true)
ApiService apiService(ApiServiceRef ref) {
  return ApiService();
}

class ApiService {
  final Dio _dio;

  ApiService({Dio? dio}) : _dio = dio ?? Dio() {
    _dio.options.baseUrl = Constants.apiurl;
    _dio.options.connectTimeout = const Duration(seconds: 5);
    _dio.options.receiveTimeout = const Duration(seconds: 3);
  }

  Future<ResponseModel?> sendRequest(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
  }) async {
    debugLog(
      LogTags.apiRequest,
      'Sending request to $endpoint with params: $queryParameters',
    );

    try {
      final response = await _dio.get(
        endpoint,
        queryParameters: queryParameters,
      );

      debugLog(
        LogTags.apiResponse,
        'Received response: ${response.statusCode} ${response.data}',
      );

      if (response.statusCode == 200) {
        return ResponseModel.fromJson(response.data);
      } else {
        debugLog(
          LogTags.apiError,
          'Error ${response.statusCode}: ${response.statusMessage}',
        );
        return null;
      }
    } on DioException catch (dioException) {
      debugLog(
        LogTags.apiError,
        'DioError: ${dioException.message}, Response: ${dioException.response}',
      );
      return null;
    } catch (e) {
      debugLog(
        LogTags.apiError,
        'Unexpected error: $e',
      );
      return null;
    }
  }
}
