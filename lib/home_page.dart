import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mon CV')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: const NetworkImage('https://thumb.wikimedia.org/wikipedia/commons/thumb/2/20/A%24AP_Rocky_at_the_2025_Cannes_Film_Festival_%28cropped%29.jpg/330px-A%24AP_Rocky_at_the_2025_Cannes_Film_Festival_%28cropped%29.jpg?utm_source=fr.wikipedia.org&utm_campaign=parser&utm_content=thumbnail'), // Ajoutez une image dans vos assets
              //child: Icon(Icons.person, size: 60), // Fallback si l'image n'existe pas
            ),
            const SizedBox(height: 16),
            const Text(
              'Wassi kambili',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Développeur Flutter & Logiciel',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const Divider(height: 30),
            
            // Section Formation
            _buildSectionTitle('Formation'),
            _buildItemCard('Licence en Informatique', 'ISIG GOMA - 2024-2026'),

            // Section Expériences
            _buildSectionTitle('Expériences'),
            _buildItemCard('Développeur Web & Mobile', 'Kambili Express - 2026'),

            // Section Compétences
            _buildSectionTitle('Compétences'),
            const Wrap(
              spacing: 8,
              children: [
                Chip(label: Text('Flutter')),
                Chip(label: Text('Dart')),
                Chip(label: Text('JavaScript')),
                Chip(label: Text('Git / GitHub')),
              ],
            ),

            // Section langue
            _buildSectionTitle('langue'),
            const Wrap(
              spacing: 8,
              children: [
                Chip(label: Text('Français')),
                Chip(label: Text('Swahili')),
                Chip(label: Text('Anglais')),
                 ],
            ),

          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Text(
          title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
        ),
      ),
    );
  }

  Widget _buildItemCard(String title, String subtitle) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: ListTile(
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
      ),
    );
  }
}