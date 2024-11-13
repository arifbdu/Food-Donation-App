import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AddProjectsPageEdtech extends StatefulWidget {
  @override
  _AddProjectsPageEdtechState createState() => _AddProjectsPageEdtechState();
}

class _AddProjectsPageEdtechState extends State<AddProjectsPageEdtech> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController studentNameController = TextEditingController();
  TextEditingController batchController = TextEditingController();
  TextEditingController studentIdController = TextEditingController();
  TextEditingController projectTitleController = TextEditingController();
  TextEditingController projectDetailsController = TextEditingController();

  Future<void> _submitForm() async {
    if (_formKey.currentState!.validate()) {
      final url = Uri.parse('http://172.17.114.159:8000/edtech/data/');
      final response = await http.post(
        url,
        body: json.encode({
          'student_name': studentNameController.text,
          'batch': batchController.text,
          'student_id': studentIdController.text,
          'project_title': projectTitleController.text,
          'project_details': projectDetailsController.text,
        }),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        // Show success dialog
        _showSuccessDialog();
      } else {
        // Handle errors, if any
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to add project. Please try again later.'),
          ),
        );
      }
    }
  }

  void _showSuccessDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Success'),
          content: Text('Project added successfully!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
                Navigator.of(context).pop(); // Pop the current route
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Projects'),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            TextFormField(
              controller: studentNameController,
              decoration: InputDecoration(labelText: 'Student Name'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter student name';
                }
                return null;
              },
            ),
            TextFormField(
              controller: batchController,
              decoration: InputDecoration(labelText: 'Batch'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter batch';
                }
                return null;
              },
            ),
            TextFormField(
              controller: studentIdController,
              decoration: InputDecoration(labelText: 'Student ID'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter student ID';
                }
                return null;
              },
            ),
            TextFormField(
              controller: projectTitleController,
              decoration: InputDecoration(labelText: 'Project Title'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter project title';
                }
                return null;
              },
            ),
            TextFormField(
              controller: projectDetailsController,
              decoration: InputDecoration(labelText: 'Project Details'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter project details';
                }
                return null;
              },
              maxLines: null, // Allow multiple lines
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _submitForm,
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}

