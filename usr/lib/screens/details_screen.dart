import 'package:flutter/material.dart';
import '../data/mock_data.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)!.settings.arguments as Category;

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
        backgroundColor: category.color.withOpacity(0.1),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(24),
            color: category.color.withOpacity(0.1),
            child: Column(
              children: [
                Icon(category.icon, size: 64, color: category.color),
                const SizedBox(height: 16),
                Text(
                  '${category.lessonCount} دروس متاحة',
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: category.topics.length,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: category.color.withOpacity(0.1),
                    child: Text(
                      '${index + 1}',
                      style: TextStyle(color: category.color, fontWeight: FontWeight.bold),
                    ),
                  ),
                  title: Text(
                    category.topics[index],
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text('اضغط للبدء'),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('سيتم فتح درس: ${category.topics[index]}')),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
