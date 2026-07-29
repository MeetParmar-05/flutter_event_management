import 'package:flutter/material.dart';
import 'package:event_management/Models/fragment_placeholder.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        textTheme: const TextTheme(
          titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          bodyLarge: TextStyle(fontSize: 16),
          bodyMedium: TextStyle(fontSize: 14),
          labelMedium: TextStyle(fontSize: 12),
        ),
      ),
      home: const Scaffold(body: FragmentPlaceholder()),
    ),
  );
}
