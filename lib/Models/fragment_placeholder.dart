import 'package:event_management/Widget/add_event_screen.dart';
import 'package:event_management/Widget/edit_event_screen.dart';
import 'package:event_management/Widget/listing_screen.dart';
import 'package:event_management/Widgets/splash.dart';
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
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: AlignmentGeometry.topLeft,
          end: AlignmentGeometry.bottomRight,
          colors: [
            Color(0xFF000000), // Pure black
            Color(0xFF15161B), // Dark carbon
            Color(0xFF202229), // Metallic charcoal
          ],
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: Navigator(
              initialRoute: '/',
              onGenerateRoute: (settings) {
                WidgetBuilder builder;
                switch (settings.name) {
                  case '/':
                  case '/s1':
                    builder = (BuildContext context) => SplashScreen();
                    break;
                  case '/s2':
                    builder = (BuildContext context) => ListingScreen(
                      events: events,
                      onEventAdded: (event) {
                        setState(() {
                          events.add(event);
                        });
                      },
                      onEventDeleted: (event) {
                        setState(() {
                          events.remove(event);
                        });
                      },
                      onEventUpdated: (eventToUpdate) async {
                        int index = events.indexWhere(
                          (e) => e.eventName == eventToUpdate.eventName,
                        );
                        final updatedEvent = await Navigator.of(context)
                            .push<EventData>(
                              MaterialPageRoute(
                                builder: (context) =>
                                    EditEventScreen(event: events[index]),
                              ),
                            );
                        setState(() {
                          if (index != -1) {
                            events[index] = updatedEvent!;
                          }
                        });
                      },
                      onToggleFavorite: (event) {
                        setState(() {
                          event.isFavorite = !event.isFavorite;
                        });
                      },
                    );
                    break;
                  case '/s3':
                    builder = (BuildContext context) => AddEventScreen();
                    break;
                  case '/s4':
                    builder = (BuildContext context) =>
                        EditEventScreen(event: settings.arguments as EventData);
                    break;
                  default:
                    builder = (BuildContext context) =>
                        Scaffold(body: Center(child: Text("Route Not Found!")));
                }
                return MaterialPageRoute(builder: builder, settings: settings);
              },
            ),
          ),
        ],
      ),
    );
  }
}
