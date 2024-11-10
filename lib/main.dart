import 'package:flutter/material.dart';

// ---------------------- pages ----------------
import 'pages/home.dart';
import './pages/records.dart';
import './pages/diary.dart';

void main() {
  runApp(const DiabetesDiary());
}

class DiabetesDiary extends StatefulWidget {
  const DiabetesDiary({super.key});

  @override
  State<DiabetesDiary> createState() => _DiabetesDiaryState();
}

class _DiabetesDiaryState extends State<DiabetesDiary> {
  final List<Map<String, String>> diaryData = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Diabetes Diary',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: "/",
      routes: {
        "/": (context) => const Home(), // Home does not need diaryData
        "/records": (context) =>
            Records(diaryData: diaryData), // Pass diaryData here
        "/diary": (context) =>
            Diary(diaryData: diaryData), // Pass diaryData here
      },
    );
  }
}
