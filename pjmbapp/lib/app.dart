import 'package:flutter/material.dart';
import 'view/client/service_detail_view.dart';
import 'view/admin/user_management_view.dart';
import 'view/admin/category_management_view.dart';
import 'view/admin/reports_moderation_view.dart';

class FreelancerApp extends StatelessWidget {
  const FreelancerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto', primaryColor: const Color(0xFFB7243B)),
      home: Scaffold(
        appBar: AppBar(title: const Text('MFU Freelance Portal'), backgroundColor: const Color(0xFFB7243B), foregroundColor: Colors.white),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const Text('Client Flow (5 Screens)', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            const SizedBox(height: 8),
            ElevatedButton.icon(
              icon: const Icon(Icons.play_arrow),
              label: const Text('Start Client Flow (Detail -> Brief -> Orders -> Chat -> Review)'),
              style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFB7243B), foregroundColor: Colors.white, padding: const EdgeInsets.all(14)),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const ServiceDetailPage())),
            ),
            const Divider(height: 32),
            const Text('Admin Flow (3 Screens)', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            const SizedBox(height: 8),
            ElevatedButton.icon(
              icon: const Icon(Icons.people), label: const Text('User Management'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black87, foregroundColor: Colors.white),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const UserManagementView())),
            ),
            const SizedBox(height: 8),
            ElevatedButton.icon(
              icon: const Icon(Icons.category), label: const Text('Category Management'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black87, foregroundColor: Colors.white),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const CategoryManagementView())),
            ),
            const SizedBox(height: 8),
            ElevatedButton.icon(
              icon: const Icon(Icons.gavel), label: const Text('Reports & Moderation'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black87, foregroundColor: Colors.white),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const ReportsModerationView())),
            ),
          ],
        ),
      ),
    );
  }
}