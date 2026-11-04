import 'package:flutter/material.dart';
import 'orders_view.dart';

class BriefPage extends StatelessWidget {
  const BriefPage({super.key});

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
            Text('Let\'s brief your freelancer', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Stepper indicator
            const Row(children: [
              Text('1 Your brief', style: TextStyle(color: Color(0xFFB7243B), fontWeight: FontWeight.bold, fontSize: 12)),
              Text('   →   2 Review & payment', style: TextStyle(color: Colors.grey, fontSize: 12)),
            ]),
            const SizedBox(height: 16),
            // Header Card
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16), border: Border.all(color: Colors.grey.shade200)),
              child: const Row(children: [
                CircleAvatar(radius: 20, child: Text('M')),
                SizedBox(width: 12),
                Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text('Event posters that turn heads', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                  Text('Maya S.\n2-day delivery • 2 revisions', style: TextStyle(color: Colors.grey, fontSize: 11)),
                ])),
                Text('฿450', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFB7243B), fontSize: 16)),
              ]),
            ),
            const SizedBox(height: 16),
            const Text('Project title', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
            const SizedBox(height: 6),
            const TextField(decoration: InputDecoration(hintText: 'MFU Green Week event poster', filled: true, fillColor: Colors.white, border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12))))),
            const SizedBox(height: 16),
            const Text('Tell Maya what you have in mind', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
            const SizedBox(height: 6),
            const TextField(
              maxLines: 4,
              decoration: InputDecoration(
                hintText: 'A bold poster for our sustainability club event on 28 Nov. Please use forest green and cream, and include the club logo, QR code and event schedule.',
                filled: true, fillColor: Colors.white,
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
              ),
            ),
            const SizedBox(height: 4),
            const Text('The more detail, the better the first draft.', style: TextStyle(color: Colors.grey, fontSize: 11)),
            const SizedBox(height: 12),
            // File Upload Box
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12), border: Border.all(color: Colors.grey.shade200)),
              child: const Row(children: [
                Icon(Icons.picture_as_pdf, color: Color(0xFFB7243B)),
                SizedBox(width: 12),
                Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text('green-week-brief.pdf', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
                  Text('PDF • 1.8 MB • Uploaded', style: TextStyle(color: Colors.grey, fontSize: 11)),
                ])),
                Icon(Icons.file_download_outlined, color: Color(0xFFB7243B)),
              ]),
            ),
            const SizedBox(height: 16),
            Row(children: [
              Expanded(
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const Text('Preferred delivery', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 6),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12), border: Border.all(color: Colors.grey.shade300)),
                    child: const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text('24 Nov 2026', style: TextStyle(fontSize: 13)), Icon(Icons.calendar_today, size: 16, color: Colors.grey)]),
                  ),
                ]),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const Text('Format', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 6),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12), border: Border.all(color: Colors.grey.shade300)),
                    child: const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text('A3 + social', style: TextStyle(fontSize: 13)), Icon(Icons.keyboard_arrow_down, size: 16, color: Colors.grey)]),
                  ),
                ]),
              ),
            ]),
            const SizedBox(height: 16),
            // Summary Card
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16), border: Border.all(color: Colors.grey.shade200)),
              child: const Column(children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text('Service price', style: TextStyle(color: Colors.grey, fontSize: 13)), Text('฿450', style: TextStyle(fontWeight: FontWeight.bold))]),
                SizedBox(height: 8),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text('Platform fee', style: TextStyle(color: Colors.grey, fontSize: 13)), Text('฿0', style: TextStyle(fontWeight: FontWeight.bold))]),
                Divider(height: 24),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text('Total', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)), Text('฿450', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Color(0xFFB7243B)))]),
              ]),
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(color: Colors.grey.shade100, borderRadius: BorderRadius.circular(12)),
              child: const Row(children: [
                Icon(Icons.check_circle_outline, size: 16, color: Colors.grey),
                SizedBox(width: 8),
                Expanded(child: Text('Maya will confirm your brief before work begins. Your delivery date starts after the order is accepted.', style: TextStyle(fontSize: 11, color: Colors.grey))),
              ]),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFB7243B), minimumSize: const Size.fromHeight(50), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const OrdersView())),
              child: const Text('→ Review order • ฿450', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15)),
            ),
          ],
        ),
      ),
    );
  }
}