import 'package:event_management/Models/event_data.dart';
import 'package:flutter/material.dart';

class AddEventScreen extends StatefulWidget {
  const AddEventScreen({super.key});

  @override
  State<AddEventScreen> createState() => _AddEventScreenState();
}

class _AddEventScreenState extends State<AddEventScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _dateController = TextEditingController();

  String ename = '';
  String ecollege = '';
  String edepartment = '';
  String edescription = '';
  DateTime? edate;

  Future<void> _selectEventDate(BuildContext context) async {
    final DateTime? picked = await showDialog<DateTime>(
      context: context,
      builder: (BuildContext context) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.dark(
              primary: Color(0xFF00F2FE), // Neon Cyan accent highlights
              surface: Color(0xFF1E1E2E),
            ),
          ),
          child: DatePickerDialog(
            firstDate: DateTime.now(),
            lastDate: DateTime(DateTime.now().year + 2, 12, 31),
            initialDate: DateTime.now(),
            fieldLabelText: "Enter Event Date",
          ),
        );
      },
    );
    if (picked != null) {
      setState(() {
        edate = picked;
        _dateController.text = "${picked.day}/${picked.month}/${picked.year}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        foregroundColor: Colors.black,
        title: Text(
          'Add New Event',
          style: TextStyle(
            fontFamily: "orbitron",
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                style: TextStyle(color: Colors.white),
                autocorrect: true,
                autofocus: true,
                keyboardType: TextInputType.text,
                textCapitalization: TextCapitalization.words,
                validator: (value) {
                  return (value == null || value.isEmpty)
                      ? "Please Enter Event Name"
                      : null;
                },
                onSaved: (newValue) {
                  ename = newValue!;
                },
                decoration: const InputDecoration(
                  labelText: "Event Name",
                  labelStyle: TextStyle(color: Colors.white70),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                style: TextStyle(color: Colors.white),
                autocorrect: true,
                textCapitalization: TextCapitalization.words,
                keyboardType: TextInputType.text,
                validator: (value) {
                  return (value == null || value.isEmpty)
                      ? "Please Enter College Name"
                      : null;
                },
                onSaved: (newValue) {
                  ecollege = newValue!;
                },
                decoration: const InputDecoration(
                  labelText: "College Name",
                  labelStyle: TextStyle(color: Colors.white70),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                style: TextStyle(color: Colors.white),
                autocorrect: true,
                textCapitalization: TextCapitalization.words,
                keyboardType: TextInputType.text,
                validator: (value) {
                  return (value == null || value.isEmpty)
                      ? "Please Enter Department Name"
                      : null;
                },
                onSaved: (newValue) {
                  edepartment = newValue!;
                },
                decoration: const InputDecoration(
                  labelText: "Department Name",
                  labelStyle: TextStyle(color: Colors.white70),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                style: TextStyle(color: Colors.white),
                autocorrect: true,
                keyboardType: TextInputType.text,
                validator: (value) {
                  return (value == null || value.isEmpty)
                      ? "Please Enter Event Description"
                      : null;
                },
                onSaved: (newValue) {
                  edescription = newValue!;
                },
                decoration: const InputDecoration(
                  labelText: "Event Description",
                  labelStyle: TextStyle(color: Colors.white70),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _dateController,
                readOnly: true,
                onTap: () => _selectEventDate(context),
                validator: (value) {
                  return (value == null || value.isEmpty)
                      ? "Please Select an Event Date"
                      : null;
                },
                decoration: const InputDecoration(
                  labelText: "Event Date",
                  hintText: "Select Date",
                  prefixIcon: Icon(
                    Icons.calendar_today,
                    color: Color(0xFF00F2FE),
                  ),
                  labelStyle: TextStyle(color: Colors.white70),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 24,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();

                    EventData newEvent = EventData(
                      eventName: ename,
                      college: ecollege,
                      department: edepartment,
                      eventDescription: edescription,
                      eventDate: edate!,
                    );

                    Navigator.pop(context, newEvent);
                  }
                },
                child: const Text(
                  "Add Event",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
