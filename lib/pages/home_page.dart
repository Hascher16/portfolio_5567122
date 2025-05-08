import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key}); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portfolio von Hascher Malik'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0), 
          child: Text(
            'Willkommen im Portfolio von Hascher Malik',
            style: TextStyle(
              fontSize: 30, 
            ),
          ),
        ),
      ),
    );
  }
}
