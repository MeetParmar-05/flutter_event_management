import 'package:event_management/Models/event_data.dart';
import 'package:flutter/material.dart';

class ListingScreen extends StatefulWidget {
  const ListingScreen({super.key});

  @override
  State<ListingScreen> createState() => _ListingScreenState();
}

class _ListingScreenState extends State<ListingScreen> {
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
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.blue.shade200,
            Colors.blue.shade400,
            Colors.blue.shade600,
          ],
        ),
      ),
      child: ListView.builder(
        itemCount: events.length,
        itemBuilder: (context, index) {
          EventData event = events[index];
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              title: Text(event.eventName, style: TextStyle(fontSize: 18)),
              subtitle: Text(
                "${event.eventDate.day}-${event.eventDate.month}-${event.eventDate.year}",
              ),
              trailing: Icon(Icons.edit, color: Colors.blue),
            ),
          );
        },
      ),
    );
  }
}
