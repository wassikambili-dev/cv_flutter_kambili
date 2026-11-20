import 'package:flutter/material.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});

  final familyMembers = const [
    {'name': 'Jean Dupont', 'relation': 'Père', 'job': 'Enseignant'},
    {'name': 'Marie Claire', 'relation': 'Mère', 'job': 'Commerçante'},
    {'name': 'Paul Dupont', 'relation': 'Frère', 'job': 'Étudiant'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ma Famille')),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: (context, index) {
          final member = familyMembers[index];
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: const CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text(member['name']!),
              subtitle: Text('Lien : ${member['relation']} | Profession : ${member['job']}'),
            ),
          );
        },
      ),
    );
  }
}