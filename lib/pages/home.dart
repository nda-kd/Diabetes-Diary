import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Diabetes Diary Home'),
        backgroundColor: const Color.fromARGB(232, 112, 177, 237),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              child: const Text(
                "Small Steps, Big Impact — Take Control of Your Health",
                style: TextStyle(
                    fontSize: 23, color: Color.fromARGB(213, 0, 0, 0)),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
                padding: const EdgeInsets.all(20),
                // color: const Color.fromARGB(232, 112, 177, 237),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/records');
                  },
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                          Color.fromARGB(232, 112, 177, 237))),
                  child: const Text(
                    'Today Data',
                    style: TextStyle(color: Color.fromARGB(232, 241, 242, 244)),
                  ),
                )),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/diary');
              },
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                      Color.fromARGB(232, 112, 177, 237))),
              child: const Text(
                'My Diary',
                style: TextStyle(color: Color.fromARGB(232, 252, 254, 255)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
