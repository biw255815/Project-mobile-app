import 'package:flutter/material.dart';
import 'package:project_fastwork/core/app_theme.dart';

class ClientCategoryView extends StatelessWidget {
  const ClientCategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.pop(context),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('CLIENT SPACE', style: TextStyle(fontSize: 10, letterSpacing: 1, fontWeight: FontWeight.w700, color: kMuted)),
                    Text('Design & creative', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900, color: kText)),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                hintText: 'Posters, branding, and more',
                prefixIcon: const Icon(Icons.search, color: kMuted),
                suffixIcon: const Icon(Icons.tune, color: kMuted),
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: const BorderSide(color: kBorder)),
              ),
            ),
            const SizedBox(height: 14),

            // Chips Filters
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _filterChip('All design', true),
                  _filterChip('Posters', false),
                  _filterChip('Branding', false),
                  _filterChip('Social', false),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Results count & Sort
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('24 student-made services', style: TextStyle(fontSize: 12, color: kMuted)),
                Row(
                  children: [
                    Text('Top rated', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                    Icon(Icons.keyboard_arrow_down, size: 16),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 14),

            // Detailed Full Service Cards
            _buildFullCard(
              bannerColor: const Color(0xFFB52E3E),
              tag: 'MFU CREATIVE CLUB / 2026',
              headline: 'CAMPUS\nAFTER HOURS.',
              author: 'Maya S. · MFU verified',
              title: 'Event posters that turn heads',
              specs: '2 days · 2 revisions',
              rating: '4.9 (28)',
              price: '฿450',
            ),
            const SizedBox(height: 16),
            _buildFullCard(
              bannerColor: const Color(0xFF6B5B95),
              tag: 'SMART IDEAS. CLEAR STORIES.',
              headline: 'Make your\npoint.',
              author: 'Ploy K. · MFU verified',
              title: 'Slides worth staying awake for',
              specs: '3 days · 10 slides',
              rating: '4.8 (19)',
              price: '฿600',
            ),
            const SizedBox(height: 16),
            const Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Explore more design', style: TextStyle(fontSize: 12, color: kMuted, fontWeight: FontWeight.bold)),
                  Icon(Icons.arrow_downward, size: 14, color: kMuted),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget _filterChip(String text, bool active) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      child: FilterChip(
        selected: active,
        label: Text(text),
        labelStyle: TextStyle(
          color: active ? Colors.white : kText,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
        backgroundColor: Colors.white,
        selectedColor: kPrimary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20), side: BorderSide(color: active ? kPrimary : kBorder)),
        onSelected: (_) {},
      ),
    );
  }

  static Widget _buildFullCard({
    required Color bannerColor,
    required String tag,
    required String headline,
    required String author,
    required String title,
    required String specs,
    required String rating,
    required String price,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: kBorder),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 140,
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: bannerColor,
              borderRadius: const BorderRadius.vertical(top: Radius.circular(19)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(tag, style: const TextStyle(color: Colors.white70, fontSize: 9, fontWeight: FontWeight.bold, letterSpacing: 0.5)),
                Text(headline, style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w900, height: 1.1)),
                const Text('A LITTLE LOUD. A LOT OF US. ↗', style: TextStyle(color: Colors.white70, fontSize: 8, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(author, style: const TextStyle(color: kMuted, fontSize: 11)),
                    const Icon(Icons.favorite_border, size: 18, color: kMuted),
                  ],
                ),
                const SizedBox(height: 4),
                Text(title, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w800)),
                const SizedBox(height: 4),
                Text(specs, style: const TextStyle(color: kMuted, fontSize: 11)),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.star, color: Colors.amber, size: 14),
                        const SizedBox(width: 4),
                        Text(rating, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                      ],
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(text: price, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w900, color: kPrimary)),
                          const TextSpan(text: ' / project', style: TextStyle(fontSize: 10, color: kMuted)),
                        ],
                      ),
                    ),
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