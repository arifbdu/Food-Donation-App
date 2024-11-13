import 'package:flutter/material.dart';
import 'AddProjectsPageEdtech.dart'; // Import AddProjectsPage
import 'ViewProjectsPageEdtech.dart'; // Import ViewProjectsPage

class EdTechProjectsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EdTech Projects'),
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
                text: 'Add Projects',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddProjectsPageEdtech()),
                  );
                },
              ),
              SizedBox(height: 20),
              BigButton(
                text: 'View Projects',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ViewProjectsPageEdtech()),
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
  final VoidCallback? onTap;

  const BigButton({
    required this.text,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 200,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.blueGrey,
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
