class EventData {
  final String id;
  final String eventName;
  final String college;
  final String department;
  final String eventDescription;
  final DateTime eventDate;
  bool isFavorite;

  EventData({
    String? id,
    required this.eventName,
    required this.college,
    required this.department,
    required this.eventDescription,
    required this.eventDate,
    this.isFavorite = false,
  }) : id = id ?? DateTime.now().microsecondsSinceEpoch.toString();

  Map<String, dynamic> toJSON() {
    return {
      "id": id,
      "eventName": eventName,
      "college": college,
      "department": department,
      "eventDescription": eventDescription,
      "eventDate": eventDate.toIso8601String(),
      "isFavorite": isFavorite,
    };
  }

  factory EventData.fromJSON(Map<String, dynamic> json) {
    return EventData(
      id: json["id"],
      eventName: json["eventName"],
      college: json["college"],
      department: json["department"],
      eventDescription: json["eventDescription"],
      eventDate: DateTime.parse(json["eventDate"]),
      isFavorite: json["isFavorite"] ?? false,
    );
  }
}
