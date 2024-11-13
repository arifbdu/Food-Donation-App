import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ViewProjectsPageIre extends StatefulWidget {
  @override
  _ViewProjectsPageIreState createState() => _ViewProjectsPageIreState();
}

class _ViewProjectsPageIreState extends State<ViewProjectsPageIre> {
  List<Map<String, dynamic>> projects = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final url = Uri.parse('http://172.17.114.159:8000/ire/data/');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      setState(() {
        projects = json.decode(response.body).cast<Map<String, dynamic>>();
      });
    } else {
      // Handle errors, if any
      print('Failed to fetch projects');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View Projects'),
      ),
      backgroundColor: Colors.blueGrey[50],
      body: projects.isEmpty
          ? Center(
        child: CircularProgressIndicator(),
      )
          : ListView.builder(
        itemCount: projects.length,
        itemBuilder: (context, index) {
          final project = projects[index];
          return Container(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: ExpansionTile(
              title: Text(
                ' ${project['project_title']}',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              childrenPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              children: [
                Text('Student Name: ${project['student_name']}', style: TextStyle(fontSize: 14)),
                Text('Batch: ${project['batch']}', style: TextStyle(fontSize: 14)),
                Text('Student ID: ${project['student_id']}', style: TextStyle(fontSize: 14)),
                Text('Project Details: ${project['project_details']}', style: TextStyle(fontSize: 14)),
                Text('Timestamp: ${DateTime.parse(project['timestamp']).toString()}', style: TextStyle(fontSize: 14)),
              ],
            ),
          );
        },
      ),
    );
  }
}
