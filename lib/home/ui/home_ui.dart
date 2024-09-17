import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task1/utils/constants.dart';

class HomeUi extends StatelessWidget {
  const HomeUi({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> options = [
      {'title': 'Truth', 'endpoint': Constants.getTruth},
      {'title': 'Dare', 'endpoint': Constants.getDare},
      {'title': 'Would You Rather', 'endpoint': Constants.getWyr},
      {'title': 'Never Have I Ever', 'endpoint': Constants.getNhie},
      {'title': 'Paranoia', 'endpoint': Constants.getParanoia},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Game Options'),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        elevation: 0,
      ),
      body: Center(
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
          shrinkWrap: true,
          itemCount: options.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: ElevatedButton(
                onPressed: () {
                  context.go('/home/questions/${options[index]['endpoint']}');
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blueAccent,
                  minimumSize: const Size(double.infinity, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 4,
                ),
                child: Text(
                  options[index]['title']!,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
