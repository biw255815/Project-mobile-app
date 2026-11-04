import 'package:flutter/material.dart';

class CategoryManagementView extends StatelessWidget {
  const CategoryManagementView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Category management')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ElevatedButton.icon(onPressed: () {}, icon: const Icon(Icons.add), label: const Text('Add category'), style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFB7243B), foregroundColor: Colors.white, minimumSize: const Size.fromHeight(45))),
            const SizedBox(height: 12),
            Expanded(
              child: ListView(
                children: const [
                  Card(child: ListTile(leading: Icon(Icons.palette), title: Text('Design & creative'), subtitle: Text('24 services • Active'), trailing: Icon(Icons.edit))),
                  Card(child: ListTile(leading: Icon(Icons.description), title: Text('Slides & documents'), subtitle: Text('18 services • Active'), trailing: Icon(Icons.edit))),
                  Card(child: ListTile(leading: Icon(Icons.camera_alt), title: Text('Photography'), subtitle: Text('12 services • Active'), trailing: Icon(Icons.edit))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}