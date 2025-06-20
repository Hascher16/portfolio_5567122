import 'package:flutter/material.dart';

class SummaryPage extends StatelessWidget {
  final String name;
  final String email;
  final String about;
  final double sliderValue;
  final bool newsletter;
  final bool notifications;
  final bool darkMode;
  final bool offlineMode;

  const SummaryPage({
    super.key,
    required this.name,
    required this.email,
    required this.about,
    required this.sliderValue,
    required this.newsletter,
    required this.notifications,
    required this.darkMode,
    required this.offlineMode,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Zusammenfassung'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Text('Ì±§ Profil', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('Name: $name'),
            Text('E-Mail: $email'),
            Text('√úber mich: $about'),
            const SizedBox(height: 20),
            const Text('ÌæöÔ∏è Slider', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('Wert: ${sliderValue.toInt()}'),
            const SizedBox(height: 20),
            const Text('‚öôÔ∏è Einstellungen', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('Newsletter: ${newsletter ? "Ja" : "Nein"}'),
            Text('Benachrichtigungen: ${notifications ? "Ja" : "Nein"}'),
            Text('Dunkler Modus: ${darkMode ? "An" : "Aus"}'),
            Text('Offline-Modus: ${offlineMode ? "An" : "Aus"}'),
          ],
        ),
      ),
    );
  }
}
