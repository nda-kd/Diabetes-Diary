import 'package:flutter/material.dart';

class Diary extends StatelessWidget {
  final List<Map<String, String>> diaryData;

  const Diary({super.key, required this.diaryData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Diary')),
      body: diaryData.isEmpty
          ? const Center(child: Text('No data available.'))
          : ListView.builder(
              itemCount: diaryData.length,
              itemBuilder: (context, index) {
                final entry = diaryData[index];
                return ListTile(
                  title: Text('Date: ${entry['date']}'),
                  subtitle: Text(
                    'Glucose: ${entry['glucose']} mmol/dl, '
                    'Insulin: ${entry['insulin']} units, '
                    'Bread: ${entry['bread']} units',
                  ),
                );
              },
            ),
    );
  }
}
