class EventData {
  final String eventName;
  final String college;
  final String department;
  final String eventDescription;
  final DateTime eventDate;
  bool isFavorite;

  EventData({
    required this.eventName,
    required this.college,
    required this.department,
    required this.eventDescription,
    required this.eventDate,
    this.isFavorite = false,
  });

  Map<String, dynamic> toJSON() {
    return {
      "eventName": eventName,
      "college": college,
      "department": department,
      "eventDescription": eventDescription,
      "eventDate": eventDate.toIso8601String(),
      "isFavorite": isFavorite,
    };
  }
}
