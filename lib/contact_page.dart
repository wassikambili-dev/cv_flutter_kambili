import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mes Coordonnées')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          ListTile(
            leading: Icon(Icons.phone, color: Colors.blue),
            title: Text('Téléphone'),
            subtitle: Text('+243 0985668101'),
          ),
          ListTile(
            leading: Icon(Icons.email, color: Colors.blue),
            title: Text('E-mail'),
            subtitle: Text('votre.wassikambili@gmail.com'),
          ),
          ListTile(
            leading: Icon(Icons.location_on, color: Colors.blue),
            title: Text('Adresse'),
            subtitle: Text('Goma, RDC'),
          ),
          ListTile(
            leading: Icon(Icons.code, color: Colors.blue),
            title: Text('GitHub'),
            subtitle: Text('github.com/votre-nom'),
          ),
        ],
      ),
    );
  }
}