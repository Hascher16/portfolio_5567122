import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _newsletter = false;
  bool _notifications = false;
  bool _darkMode = false;
  bool _offlineMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Einstellungen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            CheckboxListTile(
              title: const Text('Newsletter abonnieren'),
              value: _newsletter,
              onChanged: (value) {
                setState(() {
                  _newsletter = value ?? false;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Benachrichtigungen aktivieren'),
              value: _notifications,
              onChanged: (value) {
                setState(() {
                  _notifications = value ?? false;
                });
              },
            ),
            SwitchListTile(
              title: const Text('Dunkler Modus'),
              value: _darkMode,
              onChanged: (value) {
                setState(() {
                  _darkMode = value;
                });
              },
            ),
            SwitchListTile(
              title: const Text('Offline-Modus'),
              value: _offlineMode,
              onChanged: (value) {
                setState(() {
                  _offlineMode = value;
                });
              },
            ),
            const SizedBox(height: 30),
         Text(
  'Zusammenfassung:',
  style: Theme.of(context).textTheme.titleLarge,
),
const SizedBox(height: 10),
	Text('Newsletter: ${_newsletter ? "Ja" : "Nein"}'),
	Text('Benachrichtigungen: ${_notifications ? "Ja" : "Nein"}'),
	Text('Dunkler Modus: ${_darkMode ? "An" : "Aus"}'),
	Text('Offline-Modus: ${_offlineMode ? "An" : "Aus"}'),

          ],
        ),
      ),
    );
  }
}
