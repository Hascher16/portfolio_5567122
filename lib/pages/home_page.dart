import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key}); // const-Konstruktor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portfolio von Hascher Malik'),
      ),
      body: Center(
        child: Text(
          'Willkommen im Portfolio von Hascher Malik',
          style: TextStyle(
            fontSize: 30,  // Ändere hier die Schriftgröße
          ),
        ),
      ),
    );
  }
}
