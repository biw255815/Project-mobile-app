import 'package:flutter/material.dart';

class ReportsModerationView extends StatelessWidget {
  const ReportsModerationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Reports & moderation')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(children: [Text('3', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.red)), Text('Open')]),
                Column(children: [Text('1', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)), Text('In review')]),
                Column(children: [Text('12', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)), Text('Resolved')]),
              ],
            ),
            const SizedBox(height: 16),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Off-platform payment request', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    const SizedBox(height: 4),
                    const Text('Reported by Fah W. • Service by Ton K.', style: TextStyle(color: Colors.grey)),
                    const SizedBox(height: 12),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFB7243B), minimumSize: const Size.fromHeight(40)),
                      onPressed: () {},
                      child: const Text('Resolve & notify users', style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}