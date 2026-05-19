import 'package:event_management/Widget/listing_screen.dart';
import 'package:flutter/material.dart';
import 'package:event_management/Models/fragment_placeholder.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          foregroundColor: Colors.white,
          title: Text('Event Manager'),
        ),
        body: ListingScreen(),
      ),
    ),
  );
}
