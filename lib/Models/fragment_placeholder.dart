import 'package:event_management/Widget/listing_screen.dart';
import 'package:flutter/material.dart';
import 'package:event_management/Models/event_data.dart';

class FragmentPlaceholder extends StatefulWidget {
  const FragmentPlaceholder({super.key});

  @override
  State<FragmentPlaceholder> createState() => _FragmentPlaceholderState();
}

class _FragmentPlaceholderState extends State<FragmentPlaceholder> {
  List<EventData> events = [
    EventData(
      eventName: 'Tech Symposium',
      college: 'ABC College',
      department: 'Computer Science',
      eventDescription: 'A symposium showcasing the latest in technology.',
      eventDate: DateTime(2024, 10, 15),
    ),
    EventData(
      eventName: 'Cultural Fest',
      college: 'XYZ University',
      department: 'Arts and Culture',
      eventDescription: 'A celebration of diverse cultures and talents.',
      eventDate: DateTime(2024, 11, 20),
    ),
    EventData(
      eventName: 'Sports Meet',
      college: 'PQR Institute',
      department: 'Physical Education',
      eventDescription: 'An inter-college sports competition.',
      eventDate: DateTime(2024, 12, 5),
    ),
    EventData(
      eventName: 'Tech Symposium',
      college: 'ABC College',
      department: 'Computer Science',
      eventDescription: 'A symposium showcasing the latest in technology.',
      eventDate: DateTime(2024, 10, 15),
    ),
    EventData(
      eventName: 'Cultural Fest',
      college: 'XYZ University',
      department: 'Arts and Culture',
      eventDescription: 'A celebration of diverse cultures and talents.',
      eventDate: DateTime(2024, 11, 20),
    ),
    EventData(
      eventName: 'Sports Meet',
      college: 'PQR Institute',
      department: 'Physical Education',
      eventDescription: 'An inter-college sports competition.',
      eventDate: DateTime(2024, 12, 5),
    ),
    EventData(
      eventName: 'Tech Symposium',
      college: 'ABC College',
      department: 'Computer Science',
      eventDescription: 'A symposium showcasing the latest in technology.',
      eventDate: DateTime(2024, 10, 15),
    ),
    EventData(
      eventName: 'Cultural Fest',
      college: 'XYZ University',
      department: 'Arts and Culture',
      eventDescription: 'A celebration of diverse cultures and talents.',
      eventDate: DateTime(2024, 11, 20),
    ),
    EventData(
      eventName: 'Sports Meet',
      college: 'PQR Institute',
      department: 'Physical Education',
      eventDescription: 'An inter-college sports competition.',
      eventDate: DateTime(2024, 12, 5),
    ),
    EventData(
      eventName: 'Tech Symposium',
      college: 'ABC College',
      department: 'Computer Science',
      eventDescription: 'A symposium showcasing the latest in technology.',
      eventDate: DateTime(2024, 10, 15),
    ),
    EventData(
      eventName: 'Cultural Fest',
      college: 'XYZ University',
      department: 'Arts and Culture',
      eventDescription: 'A celebration of diverse cultures and talents.',
      eventDate: DateTime(2024, 11, 20),
    ),
    EventData(
      eventName: 'Sports Meet',
      college: 'PQR Institute',
      department: 'Physical Education',
      eventDescription: 'An inter-college sports competition.',
      eventDate: DateTime(2024, 12, 5),
    ),
    EventData(
      eventName: 'Tech Symposium',
      college: 'ABC College',
      department: 'Computer Science',
      eventDescription: 'A symposium showcasing the latest in technology.',
      eventDate: DateTime(2024, 10, 15),
    ),
    EventData(
      eventName: 'Cultural Fest',
      college: 'XYZ University',
      department: 'Arts and Culture',
      eventDescription: 'A celebration of diverse cultures and talents.',
      eventDate: DateTime(2024, 11, 20),
    ),
    EventData(
      eventName: 'Sports Meet',
      college: 'PQR Institute',
      department: 'Physical Education',
      eventDescription: 'An inter-college sports competition.',
      eventDate: DateTime(2024, 12, 5),
    ),
    EventData(
      eventName: 'Tech Symposium',
      college: 'ABC College',
      department: 'Computer Science',
      eventDescription: 'A symposium showcasing the latest in technology.',
      eventDate: DateTime(2024, 10, 15),
    ),
    EventData(
      eventName: 'Cultural Fest',
      college: 'XYZ University',
      department: 'Arts and Culture',
      eventDescription: 'A celebration of diverse cultures and talents.',
      eventDate: DateTime(2024, 11, 20),
    ),
    EventData(
      eventName: 'Sports Meet',
      college: 'PQR Institute',
      department: 'Physical Education',
      eventDescription: 'An inter-college sports competition.',
      eventDate: DateTime(2024, 12, 5),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListingScreen(events: events);
  }
}
