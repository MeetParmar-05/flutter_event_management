import 'package:event_management/Models/event_data.dart';
import 'package:flutter/material.dart';
import 'package:event_management/Widget/add_event_screen.dart';

class ListingScreen extends StatelessWidget {
  const ListingScreen({
    super.key,
    required this.events,
    required this.onEventAdded,
    required this.onEventDeleted,
    required this.onEventUpdated,
  });

  final List<EventData> events;
  final ValueChanged<EventData> onEventAdded;
  final ValueChanged<EventData> onEventDeleted;
  final ValueChanged<EventData> onEventUpdated;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        foregroundColor: Colors.black,
        title: Text(
          'Event Listing',
          style: TextStyle(
            fontFamily: "orbitron",
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: IconButton(
              onPressed: () async {
                final newEvent = await Navigator.of(context).push<EventData>(
                  MaterialPageRoute(builder: (context) => AddEventScreen()),
                );
                if (newEvent != null) {
                  onEventAdded(newEvent);
                }
              },
              icon: Icon(Icons.add, size: 40),
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF000000), Color(0xFF15161B), Color(0xFF202229)],
          ),
        ),
        child: ListView.builder(
          itemCount: events.length,
          itemBuilder: (context, index) {
            EventData event = events[index];
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: Color(0xFF1E1E2E), // Deep slate dark surface
                borderRadius: BorderRadius.circular(16),
                border: Border(
                  left: BorderSide(
                    color: Color(0xFF00F2FE), // Vivid Neon Cyan accent line
                    width: 5,
                  ),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF00F2FE), // Subtle neon glow shadow
                    blurRadius: 12,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 12,
                ),
                isThreeLine:
                    true, // Allocates vertical room for the multi-line subtitle column
                leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    // color: const Color(0xFF00F2FE), // Soft neon icon background
                    // shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.event_available,
                    color: Color(0xFF00F2FE), // Matches the neon accent
                    size: 24,
                  ),
                ),
                title: Text(
                  "${event.eventName} ",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    letterSpacing: 0.5,
                  ),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(top: 6.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${event.department} Department",
                        style: TextStyle(
                          color: Color(0xFF00F2FE),
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "${event.eventDate.day}-${event.eventDate.month}-${event.eventDate.year}",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          height: 1.3,
                        ),
                      ),
                    ],
                  ),
                ),
                trailing: Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {
                          onEventUpdated(event);
                        },
                        icon: Icon(Icons.edit, color: Colors.blue),
                      ),
                      SizedBox(width: 8),
                      IconButton(
                        onPressed: () {
                          onEventDeleted(event);
                        },
                        icon: Icon(Icons.delete, color: Colors.red),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
