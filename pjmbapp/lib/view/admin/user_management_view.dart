import 'package:flutter/material.dart';

class UserManagementView extends StatelessWidget {
  const UserManagementView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User management')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton.icon(onPressed: () {}, icon: const Icon(Icons.add), label: const Text('Add user'), style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFB7243B), foregroundColor: Colors.white, minimumSize: const Size.fromHeight(45))),
            const SizedBox(height: 12),
            const TextField(decoration: InputDecoration(prefixIcon: Icon(Icons.search), hintText: 'Search name, username...', border: OutlineInputBorder())),
            const SizedBox(height: 12),
            Expanded(
              child: ListView(
                children: const [
                  Card(child: ListTile(leading: CircleAvatar(child: Text('N')), title: Text('Niran Phan'), subtitle: Text('Client • Active'), trailing: Icon(Icons.edit))),
                  Card(child: ListTile(leading: CircleAvatar(child: Text('M')), title: Text('Maya Srisai'), subtitle: Text('Freelancer • Active'), trailing: Icon(Icons.edit))),
                  Card(child: ListTile(leading: CircleAvatar(child: Text('T')), title: Text('Ton Kittisak'), subtitle: Text('Freelancer • Suspended'), trailing: Icon(Icons.edit))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}