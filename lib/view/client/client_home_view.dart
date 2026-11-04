import 'package:flutter/material.dart';
import 'package:project_fastwork/core/app_theme.dart';
import 'package:project_fastwork/view/client/client_category_view.dart';
import 'package:project_fastwork/view/shared/profile_view.dart';

class ClientHomeView extends StatefulWidget {
  const ClientHomeView({super.key});

  @override
  State<ClientHomeView> createState() => _ClientHomeViewState();
}

class _ClientHomeViewState extends State<ClientHomeView> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        indicatorColor: kPrimarySoft,
        selectedIndex: _currentIndex,
        onDestinationSelected: (idx) {
          if (idx == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const ProfileView()),
            );
          } else {
            setState(() => _currentIndex = idx);
          }
        },
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home_outlined), selectedIcon: Icon(Icons.home, color: kPrimary), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.receipt_long_outlined), label: 'Orders'),
          NavigationDestination(icon: Icon(Icons.favorite_border), label: 'Favorites'),
          NavigationDestination(icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            // Header Top
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('CLIENT SPACE', style: TextStyle(fontSize: 10, letterSpacing: 1, fontWeight: FontWeight.w700, color: kMuted)),
                    Text('MFU Fastwork', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900, color: kText)),
                  ],
                ),
                Row(
                  children: [
                    IconButton(icon: const Icon(Icons.notifications_none_outlined), onPressed: () {}),
                    const CircleAvatar(radius: 18, backgroundColor: kPrimarySoft, child: Icon(Icons.person, color: kPrimary, size: 20)),
                  ],
                )
              ],
            ),
            const SizedBox(height: 16),
            const Text('Hey, Niran 👋', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800)),
            const Text('What are we making happen today?', style: TextStyle(color: kMuted, fontSize: 13)),
            const SizedBox(height: 16),

            // Search Bar
            TextField(
              decoration: InputDecoration(
                hintText: 'Search campus talent',
                prefixIcon: const Icon(Icons.search, color: kMuted),
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: const BorderSide(color: kBorder)),
              ),
            ),
            const SizedBox(height: 20),

            // Promo Banner Card
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: kPrimary,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('CAMPUS TALENT, REAL IMPACT', style: TextStyle(color: Colors.white70, fontSize: 10, letterSpacing: 0.8, fontWeight: FontWeight.w600)),
                  SizedBox(height: 8),
                  Text('Less "I wish."\nMore "it\'s done."', style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w900, height: 1.15)),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      Text('Meet your next collaborator', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w600)),
                      SizedBox(width: 4),
                      Icon(Icons.arrow_outward, color: Colors.white, size: 14),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Categories Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Find your kind of help', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800)),
                TextButton(onPressed: () {}, child: const Text('View all', style: TextStyle(color: kPrimary, fontSize: 12, fontWeight: FontWeight.w700))),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildCategoryItem(context, Icons.palette_outlined, 'Design', true),
                _buildCategoryItem(context, Icons.slideshow_outlined, 'Slides', false),
                _buildCategoryItem(context, Icons.camera_alt_outlined, 'Photo', false),
                _buildCategoryItem(context, Icons.code_rounded, 'Tech', false),
              ],
            ),
            const SizedBox(height: 24),

            // Recent Cards Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Made for your next idea', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800)),
                TextButton(onPressed: () {}, child: const Text('See all', style: TextStyle(color: kPrimary, fontSize: 12, fontWeight: FontWeight.w700))),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: _buildServiceCard(
                    tag: 'MFU CREATIVE CLUB',
                    titleHeader: 'AFTER\nHOURS.',
                    author: 'Maya S. · MFU verified',
                    serviceTitle: 'Event posters that turn heads',
                    timeline: '2 days · 2 revisions',
                    rating: '4.9 (28)',
                    price: '฿450',
                    headerColor: const Color(0xFFB52E3E),
                  ),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: _buildServiceCard(
                    tag: 'PRESENTATION DESIGN',
                    titleHeader: 'Make your\npoint.',
                    author: 'Ploy K. · MFU verified',
                    serviceTitle: 'Slides worth staying awake for',
                    timeline: '3 days · 10 slides',
                    rating: '4.8 (19)',
                    price: '฿600',
                    headerColor: const Color(0xFF536DFE),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Center(
              child: Text(
                'Local talent. Fair prices. A little campus magic.',
                style: TextStyle(color: kMuted, fontSize: 11),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget _buildCategoryItem(BuildContext context, IconData icon, String title, bool isNavigate) {
    return GestureDetector(
      onTap: () {
        if (isNavigate) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const ClientCategoryView()),
          );
        }
      },
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: kBorder),
            ),
            child: Icon(icon, color: kText, size: 24),
          ),
          const SizedBox(height: 6),
          Text(title, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }

  static Widget _buildServiceCard({
    required String tag,
    required String titleHeader,
    required String author,
    required String serviceTitle,
    required String timeline,
    required String rating,
    required String price,
    required Color headerColor,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: kBorder),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 110,
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: headerColor,
              borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(tag, style: const TextStyle(color: Colors.white70, fontSize: 8, fontWeight: FontWeight.bold)),
                Text(titleHeader, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 14)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(author, style: const TextStyle(fontSize: 9, color: kMuted)),
                const SizedBox(height: 4),
                Text(serviceTitle, maxLines: 2, overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                const SizedBox(height: 4),
                Text(timeline, style: const TextStyle(fontSize: 9, color: kMuted)),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.star, color: Colors.amber, size: 12),
                        const SizedBox(width: 2),
                        Text(rating, style: const TextStyle(fontSize: 9, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Text('$price/project', style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w900, color: kPrimary)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}