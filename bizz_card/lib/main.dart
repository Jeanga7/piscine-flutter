import 'package:flutter/material.dart';
// import 'package:flutter/foundation.dart';
// import 'package:device_preview/device_preview.dart';

import 'models/contact.dart';
import 'screens/bizz_card_screen.dart';
import 'utils/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    const contact = Contact(
      fullName: 'Jean Gabriel GOUDIABY',
      age: 22,
      email: 'jgoudiab@zone01.sn',
      phone: '+221 77 888 66 31',
    );

    return MaterialApp(
      // Hérite de la locale choisie dans Device Preview
      // locale: DevicePreview.locale(context),

      // Builder de Device Preview pour injecter la frame de l'appareil simulé
      // builder: DevicePreview.appBuilder,

      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: AppColors.primary),
      home: BizzCardScreen(contact: contact),
    );
  }
}
