import 'package:flutter/material.dart';
import '../models/contact.dart';
import '../utils/styles.dart';
import 'personal_info_row.dart';

class PersonalInfo extends StatelessWidget {
  final Contact contact;
  const PersonalInfo({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.borderGray),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          PersonalInfoRow(icon: Icons.cake,  text: '${contact.age} years old'),
          const Divider(),
          PersonalInfoRow(icon: Icons.email, text: contact.email),
          const Divider(),
          PersonalInfoRow(icon: Icons.phone, text: contact.phone),
        ],
      ),
    );
  }
}
