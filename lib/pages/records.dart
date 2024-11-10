import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Records extends StatefulWidget {
  final List<Map<String, String>> diaryData;

  const Records({super.key, required this.diaryData});

  @override
  State<Records> createState() => _RecordsState();
}

class _RecordsState extends State<Records> {
  final _glucoseController = TextEditingController();
  final _insulinController = TextEditingController();
  final _breadUnitsController = TextEditingController();

  void _saveData() {
    if (_glucoseController.text.isEmpty ||
        _insulinController.text.isEmpty ||
        _breadUnitsController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please fill in all fields before saving.'),
        ),
      );
      return;
    }

    var date = DateFormat('yyyy-MM-dd – kk:mm').format(DateTime.now());

    setState(() {
      widget.diaryData.add({
        'date': date,
        'glucose': _glucoseController.text,
        'insulin': _insulinController.text,
        'bread': _breadUnitsController.text,
      });
    });

    Navigator.pushNamed(context, '/diary');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Health Records')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _glucoseController,
              decoration:
                  const InputDecoration(labelText: 'Blood Glucose (mmol/dl)'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _insulinController,
              decoration: const InputDecoration(labelText: 'Insulin Units'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _breadUnitsController,
              decoration: const InputDecoration(labelText: 'Bread Units'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 25),
            Container(
              padding: const EdgeInsets.all(30),
              child: ElevatedButton(
                onPressed: _saveData,
                child: const Text('Save'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
