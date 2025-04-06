import 'package:flutter/material.dart';
import '../utils/styles.dart';

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
          Icon(icon, color: AppColors.primary),
          const SizedBox(width: 15),
          Text(text, style: AppTextStyles.info),
        ],
      ),
    );
  }
}
