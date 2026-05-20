import 'package:event_management/Widget/add_event_screen.dart';
import 'package:flutter/material.dart';
import 'package:event_management/Models/fragment_placeholder.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(body: FragmentPlaceholder()),
    ),
  );
}
