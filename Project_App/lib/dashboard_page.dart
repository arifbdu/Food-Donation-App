import 'package:flutter/material.dart';
import 'IREProjectsPage.dart'; // Adjust import path
import 'EdTechProjectsPage.dart'; // Adjust import path

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blueGrey, Colors.white],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BigButton(
                text: 'IRE Projects',
                color: Colors.pinkAccent.shade400,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => IREProjectsPage()),
                  );
                },
              ),
              SizedBox(height: 20),
              BigButton(
                text: 'EdTech Projects',
                color: Colors.deepPurple.shade400,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EdTechProjectsPage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BigButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback? onTap;

  const BigButton({
    required this.text,
    required this.color,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 250,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
