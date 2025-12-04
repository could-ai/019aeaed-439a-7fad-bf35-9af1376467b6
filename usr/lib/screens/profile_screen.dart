import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('الملف الشخصي')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://placeholder.com/150'),
              child: Icon(Icons.person, size: 50),
            ),
            const SizedBox(height: 16),
            const Text(
              'مستخدم جديد',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const Text('user@example.com', style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 32),
            _buildProfileItem(Icons.settings, 'الإعدادات'),
            _buildProfileItem(Icons.history, 'سجل التعلم'),
            _buildProfileItem(Icons.favorite, 'المفضلة'),
            _buildProfileItem(Icons.help, 'المساعدة والدعم'),
            const Divider(),
            _buildProfileItem(Icons.logout, 'تسجيل الخروج', isDestructive: true),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileItem(IconData icon, String title, {bool isDestructive = false}) {
    return ListTile(
      leading: Icon(icon, color: isDestructive ? Colors.red : Colors.blue),
      title: Text(
        title,
        style: TextStyle(
          color: isDestructive ? Colors.red : Colors.black87,
          fontWeight: isDestructive ? FontWeight.bold : FontWeight.normal,
        ),
      ),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {},
    );
  }
}
