import 'package:flutter/material.dart';
import 'package:event_management/Models/event_data.dart';

class EditEventScreen extends StatefulWidget {
  const EditEventScreen({super.key, required this.event});

  final EventData event;

  @override
  State<EditEventScreen> createState() => _EditEventScreenState();
}

class _EditEventScreenState extends State<EditEventScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _collegeController = TextEditingController();
  final TextEditingController _departmentController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nameController.text = widget.event.eventName;
    _collegeController.text = widget.event.college;
    _departmentController.text = widget.event.department;
    _descriptionController.text = widget.event.eventDescription;
    _dateController.text =
        "${widget.event.eventDate.day}/${widget.event.eventDate.month}/${widget.event.eventDate.year}";
  }

  @override
  Widget build(BuildContext context) {
    Future<void> selectEventDate(BuildContext context) async {
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
          _dateController.text = "${picked.day}/${picked.month}/${picked.year}";
        });
      }
    }

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        foregroundColor: Colors.black,
        title: Text(
          'Edit Event',
          style: TextStyle(
            fontFamily: "orbitron",
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _nameController,
                autocorrect: true,
                autofocus: true,
                keyboardType: TextInputType.text,
                validator: (value) {
                  return (value == null || value.isEmpty)
                      ? "Please Enter Event Name"
                      : null;
                },
                onSaved: (newValue) {
                  _nameController.text = newValue!;
                },
                decoration: const InputDecoration(
                  labelText: "Event Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _collegeController,
                autocorrect: true,

                keyboardType: TextInputType.text,
                validator: (value) {
                  return (value == null || value.isEmpty)
                      ? "Please Enter College Name"
                      : null;
                },
                onSaved: (newValue) {
                  _collegeController.text = newValue!;
                },
                decoration: const InputDecoration(
                  labelText: "College Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _departmentController,
                autocorrect: true,

                keyboardType: TextInputType.text,
                validator: (value) {
                  return (value == null || value.isEmpty)
                      ? "Please Enter Department Name"
                      : null;
                },
                onSaved: (newValue) {
                  _departmentController.text = newValue!;
                },
                decoration: const InputDecoration(
                  labelText: "Department Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _descriptionController,
                autocorrect: true,

                keyboardType: TextInputType.text,
                validator: (value) {
                  return (value == null || value.isEmpty)
                      ? "Please Enter Event Description"
                      : null;
                },
                onSaved: (newValue) {
                  _descriptionController.text = newValue!;
                },
                decoration: const InputDecoration(
                  labelText: "Event Description",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _dateController,
                readOnly: true,
                onTap: () => selectEventDate(context),
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
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  ),
                ),
              ),
              SizedBox(height: 16.0),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 14.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();

                    EventData newEvent = EventData(
                      eventName: _nameController.text,
                      college: _collegeController.text,
                      department: _departmentController.text,
                      eventDescription: _descriptionController.text,
                      eventDate: _dateController.text.isNotEmpty
                          ? DateTime.parse(
                              "${_dateController.text.split('/')[2]}-${_dateController.text.split('/')[1]}-${_dateController.text.split('/')[0]}",
                            )
                          : widget.event.eventDate,
                    );

                    Navigator.pop(context, newEvent);
                  }
                },
                child: const Text(
                  "Edit Event",
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _dateController.dispose();
    _nameController.dispose();
    _collegeController.dispose();
    _departmentController.dispose();
    _descriptionController.dispose();
  }
}
