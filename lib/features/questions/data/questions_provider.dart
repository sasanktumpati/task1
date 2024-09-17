import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task1/services/networking/models/response/response_model.dart';
import 'package:task1/logger/log_tags.dart';
import 'package:task1/logger/logger.dart';
import '../../../services/networking/api_service.dart';

final questionsProvider = FutureProvider.family<ResponseModel?, String>((
  ref,
  endpoint,
) async {
  final apiService = ref.watch(apiServiceProvider);

  try {
    final response = await apiService.sendRequest(endpoint);

    if (response != null) {
      debugLog(LogTags.apiResponse, 'Fetched question: ${response.question}');
      return response;
    } else {
      debugLog(LogTags.apiError, 'Failed to fetch question.');
      return null;
    }
  } catch (e) {
    debugLog(LogTags.apiError, 'Unexpected error while fetching question: $e');
    return null;
  }
});

final languageProvider = StateProvider<String>((ref) => 'en');
