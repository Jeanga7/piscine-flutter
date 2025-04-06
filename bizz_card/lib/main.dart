import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('BizzCard'),
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {
                // Logique pour les notifications
              },
            ),
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                // Logique pour le menu
              },
            ),
          ],
        ),
        body: const BizzCard(),
      ),
    );
  }
}

class BizzCard extends StatelessWidget {
  const BizzCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20.0),
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          const ProfilePicture(),
          const SizedBox(height: 30),
          const NameSection(),
          const SizedBox(height: 30),
          const PersonalInfo(),
          const SizedBox(height: 30),
          const QrCodeSection(),
        ],
      ),
    );
  }
}

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.blueAccent, width: 5),
            ),
          ),
          Container(
            width: 140,
            height: 140,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/profile.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NameSection extends StatelessWidget {
  const NameSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.blue.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Column(
        children: [
          Text(
            'Jean Gabriel GOUDIABY',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Column(
        children: [
          PersonalInfoRow(icon: Icons.cake, text: '22 years old'),
          Divider(),
          PersonalInfoRow(icon: Icons.email, text: 'jgoudiab@zone01.sn'),
          Divider(),
          PersonalInfoRow(icon: Icons.phone, text: '+221 77 888 66 31'),
        ],
      ),
    );
  }
}

class PersonalInfoRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const PersonalInfoRow({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.blueAccent),
          const SizedBox(width: 15),
          Text(text, style: const TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}

class QrCodeSection extends StatelessWidget {
  const QrCodeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Scan for my contact info",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blueAccent, width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: QrImageView(
            data:
                'BEGIN:VCARD\nVERSION:3.0\nFN:Jean Gabriel GOUDIABY\nTEL:+221778886631\nEMAIL:jgoudiab@zone01.sn\nEND:VCARD',
            size: 200.0,
            backgroundColor: Colors.white,
            // foregroundColor: Colors.blueAccent,
            eyeStyle: const QrEyeStyle(
              color: Colors.blueAccent,
            ),
            dataModuleStyle: const QrDataModuleStyle(
              color: Colors.blueAccent,
            ),
          ),
        ),
      ],
    );
  }
}
