import 'package:flutter/material.dart';
import 'brief_page.dart';

class ServiceDetailPage extends StatelessWidget {
  const ServiceDetailPage({super.key});

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
            Text('A little creative backup', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
          ],
        ),
        actions: [IconButton(icon: const Icon(Icons.favorite_border, color: Colors.black), onPressed: () {})],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Banner
            Container(
              height: 180,
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(color: const Color(0xFFB7243B), borderRadius: BorderRadius.circular(16)),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('MFU CREATIVE CLUB / 2026', style: TextStyle(color: Colors.white70, fontSize: 10, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text('CAMPUS\nAFTER HOURS.', style: TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.w900, height: 1.1)),
                  Spacer(),
                  Text('A LITTLE LOUD. A LOT OF US. ↗', style: TextStyle(color: Colors.white70, fontSize: 9, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Row(children: [
              Chip(label: const Text('Design & creative', style: TextStyle(fontSize: 11, color: Color(0xFFB7243B))), backgroundColor: Colors.pink.shade50),
              const SizedBox(width: 8),
              Chip(label: const Text('MFU verified', style: TextStyle(fontSize: 11, color: Colors.teal)), backgroundColor: Colors.teal.shade50),
            ]),
            const SizedBox(height: 8),
            const Text('Event posters that turn heads', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 4),
            const Text('★ 4.9 (28 reviews)  •  38 projects completed', style: TextStyle(color: Colors.grey, fontSize: 13)),
            const SizedBox(height: 16),
            // Profile Box
            Row(children: [
              const CircleAvatar(radius: 20, child: Text('M')),
              const SizedBox(width: 12),
              const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text('Maya S.', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                Text('Design student • MFU', style: TextStyle(color: Colors.grey, fontSize: 12)),
              ]),
              const Spacer(),
              TextButton(onPressed: () {}, child: const Text('View profile', style: TextStyle(color: Color(0xFFB7243B), fontWeight: FontWeight.bold))),
            ]),
            const SizedBox(height: 12),
            Text('Club night, freshers\' fair, or your next big idea — I\'ll turn your brief into a bold, custom poster that feels like your event. Made by a student who gets campus life.', style: TextStyle(color: Colors.grey.shade700, fontSize: 13, height: 1.4)),
            const SizedBox(height: 16),
            // Package Box
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16), border: Border.all(color: Colors.grey.shade200)),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                    Text('The campus essential', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    Text('฿450', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Color(0xFFB7243B))),
                  ]),
                  Divider(height: 24),
                  Row(children: [Icon(Icons.check_circle_outline, size: 16, color: Colors.teal), SizedBox(width: 8), Text('1 custom event poster design', style: TextStyle(fontSize: 13))]),
                  SizedBox(height: 6),
                  Row(children: [Icon(Icons.check_circle_outline, size: 16, color: Colors.teal), SizedBox(width: 8), Text('Print-ready PDF + social-size PNG', style: TextStyle(fontSize: 13))]),
                  SizedBox(height: 6),
                  Row(children: [Icon(Icons.check_circle_outline, size: 16, color: Colors.teal), SizedBox(width: 8), Text('2 revisions included', style: TextStyle(fontSize: 13))]),
                  SizedBox(height: 12),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                    Text('Delivery', style: TextStyle(color: Colors.grey, fontSize: 12)),
                    Text('2 days after brief approval', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                  ]),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Good words section
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              const Text('Good words from campus', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              TextButton(onPressed: () {}, child: const Text('All 28', style: TextStyle(color: Color(0xFFB7243B), fontWeight: FontWeight.bold))),
            ]),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16), border: Border.all(color: Colors.grey.shade200)),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  Text('June L. • 18 Nov', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
                  Row(children: [Icon(Icons.star, color: Colors.amber, size: 14), Icon(Icons.star, color: Colors.amber, size: 14), Icon(Icons.star, color: Colors.amber, size: 14), Icon(Icons.star, color: Colors.amber, size: 14), Icon(Icons.star, color: Colors.amber, size: 14)]),
                ]),
                const SizedBox(height: 8),
                Text('"Maya nailed our club\'s vibe. Super easy to work with, and the poster looked amazing in print!"', style: TextStyle(color: Colors.grey.shade700, fontSize: 12)),
              ]),
            ),
            const SizedBox(height: 20),
            // Action buttons
            Row(children: [
              Expanded(
                flex: 1,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(padding: const EdgeInsets.symmetric(vertical: 14), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                  onPressed: () {},
                  child: const Text('Message', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                flex: 2,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFB7243B), padding: const EdgeInsets.symmetric(vertical: 14), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const BriefPage())),
                  child: const Text('Order now • ฿450', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}