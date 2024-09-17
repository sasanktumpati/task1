import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task1/features/questions/data/questions_provider.dart';
import '../../../services/networking/models/response/response_model.dart';

final isLoadingProvider = StateProvider<bool>((ref) => false);

class QuestionsUi extends ConsumerWidget {
  final String endpoint;

  const QuestionsUi({super.key, required this.endpoint});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final questionAsyncValue = ref.watch(questionsProvider(endpoint));
    final isLoading = ref.watch(isLoadingProvider);
    final language = ref.watch(languageProvider);

    final Map<String, String> languages = {
      'en': 'English',
      'bn': 'Bengali',
      'de': 'German',
      'es': 'Spanish',
      'fr': 'French',
      'hi': 'Hindi',
      'tl': 'Tagalog',
    };

    return Scaffold(
      appBar: AppBar(
        title: Text(_getAppBarTitle(endpoint)),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        elevation: 0,
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.read(isLoadingProvider.notifier).state = true;
          ref.invalidate(questionsProvider(endpoint));
          await Future.delayed(const Duration(seconds: 1));
          ref.read(isLoadingProvider.notifier).state = false;
        },
        child: questionAsyncValue.when(
          data: (response) {
            if (response != null) {
              return SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 40.0),
                child: Column(
                  children: [
                    DropdownButton<String>(
                      value: language,
                      onChanged: (String? newValue) {
                        if (newValue != null) {
                          ref.read(languageProvider.notifier).state = newValue;
                        }
                      },
                      items: languages.entries
                          .map<DropdownMenuItem<String>>((entry) {
                        return DropdownMenuItem<String>(
                          value: entry.key,
                          child: Text(entry.value),
                        );
                      }).toList(),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 200,
                      child: Center(
                        child: isLoading
                            ? const CircularProgressIndicator()
                            : Text(
                                _getQuestionText(response, language) ??
                                    'No question available',
                                style: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black87,
                                ),
                                textAlign: TextAlign.center,
                              ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () async {
                        ref.read(isLoadingProvider.notifier).state = true;
                        ref.invalidate(questionsProvider(endpoint));
                        await Future.delayed(const Duration(seconds: 1));
                        ref.read(isLoadingProvider.notifier).state = false;
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blueAccent,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 32, vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        elevation: 4,
                      ),
                      child: const Text(
                        "Next Question",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return _buildErrorUI(ref);
            }
          },
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          error: (error, stack) => _buildErrorUI(ref),
        ),
      ),
    );
  }

  Widget _buildErrorUI(WidgetRef ref) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "An error occurred while fetching the question.",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () async {
                ref.read(isLoadingProvider.notifier).state = true;
                ref.invalidate(questionsProvider(endpoint));
                await Future.delayed(const Duration(seconds: 1));
                ref.read(isLoadingProvider.notifier).state = false;
              },
              icon: const Icon(Icons.refresh),
              label: const Text('Try Again'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.redAccent,
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                elevation: 4,
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _getAppBarTitle(String endpoint) {
    switch (endpoint) {
      case 'truth':
        return 'Truth';
      case 'dare':
        return 'Dare';
      case 'wyr':
        return 'Would You Rather';
      case 'nhie':
        return 'Never Have I Ever';
      case 'paranoia':
        return 'Paranoia';
      default:
        return 'Questions';
    }
  }

  String? _getQuestionText(ResponseModel response, String language) {
    if (language == 'en') {
      return response.question;
    } else {
      return _getTranslatedQuestion(response.translations, language) ??
          response.question;
    }
  }

  String? _getTranslatedQuestion(Translations? translations, String language) {
    switch (language) {
      case 'bn':
        return translations?.bn;
      case 'de':
        return translations?.de;
      case 'es':
        return translations?.es;
      case 'fr':
        return translations?.fr;
      case 'hi':
        return translations?.hi;
      case 'tl':
        return translations?.tl;
      default:
        return null;
    }
  }
}
