import 'package:flutter/material.dart';
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: AppColors.primary),
      home: BizzCardScreen(contact: contact),
    );
  }
}
