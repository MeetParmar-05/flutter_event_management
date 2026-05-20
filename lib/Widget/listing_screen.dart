import 'package:event_management/Models/event_data.dart';
import 'package:flutter/material.dart';

class ListingScreen extends StatefulWidget {
  const ListingScreen({super.key, required this.events});

  final List<EventData> events;

  @override
  State<ListingScreen> createState() => _ListingScreenState();
}

class _ListingScreenState extends State<ListingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
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
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.add, size: 40),
            ),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.pop(context);
      //   },
      //   child: Icon(Icons.arrow_back),
      // ),
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
          itemCount: widget.events.length,
          itemBuilder: (context, index) {
            EventData event = widget.events[index];
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: const Color(0xFF1E1E2E), // Deep slate dark surface
                borderRadius: BorderRadius.circular(16),
                border: const Border(
                  left: BorderSide(
                    color: Color(0xFF00F2FE), // Vivid Neon Cyan accent line
                    width: 5,
                  ),
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF00F2FE), // Subtle neon glow shadow
                    blurRadius: 12,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 12,
                ),
                isThreeLine:
                    true, // Allocates vertical room for the multi-line subtitle column
                leading: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    // color: const Color(0xFF00F2FE), // Soft neon icon background
                    // shape: BoxShape.circle,
                  ),
                  child: const Icon(
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
                  padding: const EdgeInsets.only(top: 6.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${event.department} Department",
                        style: TextStyle(
                          color: const Color(0xFF00F2FE),
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(height: 4),
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
              ),
            );
          },
        ),
      ),
    );
  }
}
