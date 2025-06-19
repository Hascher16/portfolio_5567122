import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key}); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Portfolio von Hascher Malik'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0), 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Willkommen im Portfolio von Hascher Malik',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/slider');
                },
                icon: const Icon(Icons.tune),
                label: const Text('Zur Slider-Seite'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  textStyle: const TextStyle(fontSize: 18),
                ),
              ),
		const SizedBox(height: 20),
		ElevatedButton.icon(
		onPressed: () {
 		Navigator.pushNamed(context, '/profile');
  },
  icon: const Icon(Icons.person),
  label: const Text('Zur Profilseite'),
  style: ElevatedButton.styleFrom(
    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    textStyle: const TextStyle(fontSize: 18),
  ),
),
const SizedBox(height: 20),
ElevatedButton.icon(
  onPressed: () {
    Navigator.pushNamed(context, '/settings');
  },
  icon: Icon(Icons.settings),
  label: Text('Zur Einstellungsseite'),
),


            ],
          ),
        ),
      ),
    );
  }
}
