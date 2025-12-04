import 'package:flutter/material.dart';
import 'screens/main_scaffold.dart';
import 'screens/details_screen.dart';

void main() {
  runApp(const EnglishLearningApp());
}

class EnglishLearningApp extends StatelessWidget {
  const EnglishLearningApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'تعلم الإنجليزية',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF3B82F6), // Blue for education
          secondary: const Color(0xFFF59E0B), // Amber for highlights
          background: const Color(0xFFF3F4F6),
        ),
        useMaterial3: true,
        fontFamily: 'Roboto', // Default, can be changed if Arabic font is needed
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(color: Colors.black87),
        ),
      ),
      // Routing setup
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScaffold(),
        '/details': (context) => const DetailsScreen(),
      },
    );
  }
}
