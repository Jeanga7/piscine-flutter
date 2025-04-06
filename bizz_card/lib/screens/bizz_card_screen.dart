import 'package:flutter/material.dart';
import '../models/contact.dart';
import '../utils/styles.dart';
import '../widgets/profile_picture.dart';
import '../widgets/name_section.dart';
import '../widgets/personal_info.dart';
import '../widgets/qr_code_section.dart';

class BizzCardScreen extends StatelessWidget {
  final Contact contact;
  const BizzCardScreen({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BizzCard'),
        backgroundColor: AppColors.primary,
        centerTitle: true,
        actions: [
          IconButton(icon: const Icon(Icons.notifications), onPressed: () {}),
          IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const ProfilePicture(),
            const SizedBox(height: 30),
            NameSection(fullName: contact.fullName),
            const SizedBox(height: 30),
            PersonalInfo(contact: contact),
            const SizedBox(height: 30),
            const QrCodeSection(),
          ],
        ),
      ),
    );
  }
}
