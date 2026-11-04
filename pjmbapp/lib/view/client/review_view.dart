import 'package:flutter/material.dart';

class ReviewView extends StatelessWidget {
  const ReviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(color: Colors.black),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('CLIENT SPACE', style: TextStyle(color: Color(0xFFB7243B), fontSize: 10, fontWeight: FontWeight.bold)),
            Text('Give good work some love', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16), border: Border.all(color: Colors.grey.shade200)),
              child: const Row(children: [
                CircleAvatar(radius: 20, child: Text('M')),
                SizedBox(width: 12),
                Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text('Design Club welcome poster', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                  Text('Maya S.\nDelivered 18 Nov • ฿450', style: TextStyle(color: Colors.grey, fontSize: 11)),
                ])),
                Chip(label: Text('Completed', style: TextStyle(fontSize: 10, color: Colors.teal)), backgroundColor: Color(0xFFE6F4F1)),
              ]),
            ),
            const SizedBox(height: 24),
            const Text('How did Maya do?', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List<Widget>.generate(
                5,
                (index) => const Icon(Icons.star, color: Colors.amber, size: 36),
              ),
            ),
            const SizedBox(height: 8),
            const Text('5 out of 5 • Nailed it!', style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 12)),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Chip(label: const Text('✓ Great communication', style: TextStyle(fontSize: 10, color: Colors.teal)), backgroundColor: Colors.teal.shade50),
                const SizedBox(width: 6),
                Chip(label: const Text('✓ On time', style: TextStyle(fontSize: 10, color: Colors.teal)), backgroundColor: Colors.teal.shade50),
                const SizedBox(width: 6),
                Chip(label: const Text('✓ Creative', style: TextStyle(fontSize: 10, color: Colors.teal)), backgroundColor: Colors.teal.shade50),
              ],
            ),
            const SizedBox(height: 20),
            const Align(alignment: Alignment.centerLeft, child: Text('Share your experience', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12))),
            const SizedBox(height: 6),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12), border: Border.all(color: Colors.grey.shade300)),
              child: const Text('Maya totally understood our club\'s style. The poster looked great, arrived on time, and she was lovely to work with. Would absolutely book again!', style: TextStyle(fontSize: 13, height: 1.4)),
            ),
            const Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(top: 4), child: Text('148 / 500 characters', style: TextStyle(color: Colors.grey, fontSize: 10)))),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(color: Colors.grey.shade100, borderRadius: BorderRadius.circular(12)),
              child: const Row(children: [
                Icon(Icons.favorite_border, size: 16, color: Colors.grey),
                SizedBox(width: 8),
                Expanded(child: Text('Your review will be public, with your name and profile photo. Honest, thoughtful feedback helps our campus grow.', style: TextStyle(fontSize: 11, color: Colors.grey))),
              ]),
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFB7243B), minimumSize: const Size.fromHeight(50), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
              onPressed: () => Navigator.popUntil(context, (route) => route.isFirst),
              icon: const Icon(Icons.star_border, color: Colors.white),
              label: const Text('Publish review', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Maybe later', style: TextStyle(color: Colors.grey, fontSize: 12)),
            ),
          ],
        ),
      ),
    );
  }
}