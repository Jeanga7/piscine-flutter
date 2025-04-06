import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../utils/styles.dart';

class QrCodeSection extends StatelessWidget {
  const QrCodeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Scan for my contact info", style: AppTextStyles.qrLabel),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.primary, width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: QrImageView(
            data:
                'BEGIN:VCARD\nVERSION:3.0\nFN:Jean Gabriel GOUDIABY\nTEL:+221778886631\nEMAIL:jgoudiab@zone01.sn\nEND:VCARD',
            size: 200.0,
            backgroundColor: Colors.white,
            eyeStyle: const QrEyeStyle(color: AppColors.primary),
            dataModuleStyle: const QrDataModuleStyle(color: AppColors.primary),
          ),
        ),
      ],
    );
  }
}
