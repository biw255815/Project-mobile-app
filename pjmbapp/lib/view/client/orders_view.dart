import 'package:flutter/material.dart';
import 'order_detail_view.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('CLIENT SPACE', style: TextStyle(color: Color(0xFFB7243B), fontSize: 10, fontWeight: FontWeight.bold)),
            Text('Your ideas, in motion', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
          ],
        ),
        actions: [IconButton(icon: const Icon(Icons.search, color: Colors.black), onPressed: () {})],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('From the first hello to the final file.\nKeep every collaboration in one place.', style: TextStyle(color: Colors.grey, fontSize: 12)),
            const SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                ChoiceChip(label: const Text('All (6)'), selected: true, selectedColor: const Color(0xFFB7243B), labelStyle: const TextStyle(color: Colors.white)), const SizedBox(width: 8),
                ChoiceChip(label: const Text('Active (1)'), selected: false), const SizedBox(width: 8),
                ChoiceChip(label: const Text('Completed'), selected: false), const SizedBox(width: 8),
                ChoiceChip(label: const Text('Canceled'), selected: false),
              ]),
            ),
            const SizedBox(height: 16),
            // Card 1
            InkWell(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const OrderDetailView())),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16), border: Border.all(color: Colors.grey.shade200)),
                child: Column(children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                    const Text('#MF-2408', style: TextStyle(color: Colors.grey, fontSize: 11)),
                    Container(padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4), decoration: BoxDecoration(color: Colors.pink.shade50, borderRadius: BorderRadius.circular(8)), child: const Text('In progress', style: TextStyle(color: Color(0xFFB7243B), fontSize: 10, fontWeight: FontWeight.bold))),
                  ]),
                  const SizedBox(height: 12),
                  const Row(children: [
                    CircleAvatar(backgroundColor: Color(0xFFFFF0F2), child: Icon(Icons.palette_outlined, color: Color(0xFFB7243B))),
                    SizedBox(width: 12),
                    Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                      Text('Event posters that turn heads', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                      Text('Maya S. • Freelancer', style: TextStyle(color: Colors.grey, fontSize: 12)),
                    ]),
                  ]),
                  const Divider(height: 24),
                  const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                    Text('Due 24 Nov • 2 days left', style: TextStyle(color: Colors.grey, fontSize: 12)),
                    Text('฿450', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  ]),
                ]),
              ),
            ),
            const SizedBox(height: 16),
            // Card 2
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16), border: Border.all(color: Colors.grey.shade200)),
              child: Column(children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  const Text('#MF-2381', style: TextStyle(color: Colors.grey, fontSize: 11)),
                  Container(padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4), decoration: BoxDecoration(color: Colors.teal.shade50, borderRadius: BorderRadius.circular(8)), child: const Text('Completed', style: TextStyle(color: Colors.teal, fontSize: 10, fontWeight: FontWeight.bold))),
                ]),
                const SizedBox(height: 12),
                const Row(children: [
                  CircleAvatar(backgroundColor: Color(0xFFFFF0F2), child: Icon(Icons.palette_outlined, color: Color(0xFFB7243B))),
                  SizedBox(width: 12),
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Text('Design Club welcome poster', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                    Text('Maya S. • Freelancer', style: TextStyle(color: Colors.grey, fontSize: 12)),
                  ]),
                ]),
                const Divider(height: 24),
                const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  Text('Delivered 18 Nov 2026', style: TextStyle(color: Colors.grey, fontSize: 12)),
                  Text('฿450', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                ]),
              ]),
            ),
            const SizedBox(height: 16),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(minimumSize: const Size.fromHeight(48), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
              onPressed: () {},
              icon: const Icon(Icons.star_border, color: Color(0xFFB7243B)),
              label: const Text('Leave a review', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(color: const Color(0xFFFFF0F2), borderRadius: BorderRadius.circular(16)),
              child: const Row(children: [
                Icon(Icons.chat_bubble_outline, color: Color(0xFFB7243B)),
                SizedBox(width: 12),
                Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text('A quick chat goes a long way.', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
                  Text('Open an order to message your freelancer or check its progress.', style: TextStyle(fontSize: 11, color: Colors.grey)),
                ])),
              ]),
            ),
            Center(
              child: TextButton(
                onPressed: () {},
                child: const Text('View 4 older orders', style: TextStyle(color: Color(0xFFB7243B), fontWeight: FontWeight.bold, fontSize: 12)),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        selectedItemColor: const Color(0xFFB7243B),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.assignment), label: 'Orders'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: 'Favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
      ),
    );
  }
}