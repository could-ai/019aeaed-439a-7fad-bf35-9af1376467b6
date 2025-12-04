import 'package:flutter/material.dart';

class Category {
  final String title;
  final int lessonCount;
  final IconData icon;
  final Color color;
  final List<String> topics;

  Category({
    required this.title,
    required this.lessonCount,
    required this.icon,
    required this.color,
    required this.topics,
  });
}

final List<Category> categories = [
  Category(
    title: 'الأساسيات',
    lessonCount: 12,
    icon: Icons.abc,
    color: Colors.blue,
    topics: ['الحروف الأبجدية', 'الأرقام', 'الألوان', 'التحيات'],
  ),
  Category(
    title: 'القواعد',
    lessonCount: 25,
    icon: Icons.menu_book,
    color: Colors.orange,
    topics: ['الأسماء', 'الأفعال', 'الصفات', 'الأزمنة'],
  ),
  Category(
    title: 'المحادثة',
    lessonCount: 15,
    icon: Icons.chat_bubble_outline,
    color: Colors.green,
    topics: ['التعريف بالنفس', 'في المطعم', 'السفر', 'التسوق'],
  ),
  Category(
    title: 'المفردات',
    lessonCount: 40,
    icon: Icons.extension,
    color: Colors.purple,
    topics: ['الحيوانات', 'الطعام', 'المهن', 'العائلة'],
  ),
  Category(
    title: 'الاستماع',
    lessonCount: 10,
    icon: Icons.headphones,
    color: Colors.red,
    topics: ['قصص قصيرة', 'أخبار', 'حوارات', 'أغاني'],
  ),
  Category(
    title: 'القراءة',
    lessonCount: 8,
    icon: Icons.chrome_reader_mode,
    color: Colors.teal,
    topics: ['مقالات', 'كتب', 'رسائل', 'لافتات'],
  ),
];
