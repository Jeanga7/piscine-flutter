import 'package:flutter/material.dart';
import '../utils/styles.dart';

class NameSection extends StatelessWidget {
  final String fullName;
  const NameSection({super.key, required this.fullName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.lightPrimary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        fullName,
        textAlign: TextAlign.center,
        style: AppTextStyles.header,
      ),
    );
  }
}
