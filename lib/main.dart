import 'package:flutter/material.dart';
import 'package:event_management/Models/fragment_placeholder.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyanAccent,
          foregroundColor: Colors.black,
          title: Text(
            'Event Manager',
            style: TextStyle(
              fontFamily: "orbitron",
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.add, size: 40),
            ),
          ],
        ),
        body: FragmentPlaceholder(),
      ),
    ),
  );
}
