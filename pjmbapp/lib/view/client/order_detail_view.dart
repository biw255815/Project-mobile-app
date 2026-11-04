import 'package:flutter/material.dart';
import 'review_view.dart';

class OrderDetailView extends StatelessWidget {
  const OrderDetailView({super.key});

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
            Text('Order #MF-2408', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
          ],
        ),
        actions: [IconButton(icon: const Icon(Icons.more_horiz, color: Colors.black), onPressed: () {})],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  Container(padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4), decoration: BoxDecoration(color: Colors.pink.shade50, borderRadius: BorderRadius.circular(8)), child: const Text('In progress', style: TextStyle(color: Color(0xFFB7243B), fontSize: 10, fontWeight: FontWeight.bold))),
                  const Text('Placed 22 Nov 2026', style: TextStyle(color: Colors.grey, fontSize: 12)),
                ]),
                const SizedBox(height: 12),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16), border: Border.all(color: Colors.grey.shade200)),
                  child: const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Text('MFU Green Week event poster', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                    SizedBox(height: 8),
                    Row(children: [
                      CircleAvatar(radius: 16, child: Text('M')),
                      SizedBox(width: 8),
                      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                        Text('Maya S.', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                        Text('Your freelancer • Usually replies in 1h', style: TextStyle(color: Colors.grey, fontSize: 10)),
                      ]),
                    ]),
                    Divider(height: 24),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                      Text('Delivery by 24 Nov', style: TextStyle(color: Colors.grey, fontSize: 12)),
                      Text('฿450 • Paid', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
                    ]),
                  ]),
                ),
                const SizedBox(height: 16),
                const Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                  Column(children: [Icon(Icons.check_circle, color: Color(0xFFB7243B), size: 20), Text('Accepted', style: TextStyle(fontSize: 10, color: Color(0xFFB7243B), fontWeight: FontWeight.bold))]),
                  Column(children: [Icon(Icons.stop_circle_outlined, color: Color(0xFFB7243B), size: 20), Text('In progress', style: TextStyle(fontSize: 10, color: Color(0xFFB7243B), fontWeight: FontWeight.bold))]),
                  Column(children: [Icon(Icons.circle_outlined, color: Colors.grey, size: 20), Text('Delivered', style: TextStyle(fontSize: 10, color: Colors.grey))]),
                  Column(children: [Icon(Icons.circle_outlined, color: Colors.grey, size: 20), Text('Complete', style: TextStyle(fontSize: 10, color: Colors.grey))]),
                ]),
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12), border: Border.all(color: Colors.grey.shade200)),
                  child: const Row(children: [
                    Icon(Icons.picture_as_pdf, color: Color(0xFFB7243B)),
                    SizedBox(width: 12),
                    Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                      Text('green-week-brief.pdf', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
                      Text('Your brief • PDF • 1.8 MB', style: TextStyle(color: Colors.grey, fontSize: 11)),
                    ])),
                    Icon(Icons.file_download_outlined, color: Color(0xFFB7243B)),
                  ]),
                ),
                const SizedBox(height: 20),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  const Text('Let\'s talk details', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  TextButton(onPressed: () {}, child: const Text('View brief', style: TextStyle(color: Color(0xFFB7243B), fontWeight: FontWeight.bold))),
                ]),
                const Center(child: Text('TODAY • 22 NOVEMBER', style: TextStyle(color: Colors.grey, fontSize: 10))),
                const SizedBox(height: 12),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12), border: Border.all(color: Colors.grey.shade200)),
                    child: const Text('Hey Niran! Thanks for the brief. I\'ll keep the\ndesign bold, with a green and cream palette 🍃', style: TextStyle(fontSize: 12)),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(left: 4, top: 4), child: Text('Maya • 10:24 AM', style: TextStyle(color: Colors.grey, fontSize: 10))),
                const SizedBox(height: 12),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(color: const Color(0xFFB7243B), borderRadius: BorderRadius.circular(12)),
                    child: const Text('Perfect! Please make the event date and\nQR code easy to spot. Thanks, Maya!', style: TextStyle(color: Colors.white, fontSize: 12)),
                  ),
                ),
                const Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(right: 4, top: 4), child: Text('10:26 AM • Read', style: TextStyle(color: Colors.grey, fontSize: 10)))),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFB7243B), minimumSize: const Size.fromHeight(50), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const ReviewView())),
              child: const Text('Next: Review View', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            ),
          ),
        ],
      ),
    );
  }
}