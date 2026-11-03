import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.red),
      home: Scaffold(
        appBar: AppBar(title: const Text('Profil Aditya Ramadhan Khiang')),
        body: const Column(
          children: [
            InfoRow(ikon: Icons.person, label: 'Nama', value: 'Aditya Ramadhan Khiang'),
            SizedBox(height: 10),
            InfoRow(ikon: Icons.school, label: 'NIM', value: '1124160084'),
            SizedBox(height: 10),
            InfoRow(ikon: Icons.computer, label: 'Program Studi', value: 'Software Engineering'),
            SizedBox(height: 10),
            InfoRow(ikon: Icons.mail, label: 'Email', value: 'rafalfinrafin431@gmail.com'),
            SizedBox(height: 10),
            InfoRow(ikon: Icons.camera_alt, label: 'Instagram', value: '@dtyrmdn'),
          ],
        ),
      ),
    );
  }
}

class InfoRow extends StatelessWidget {
  const InfoRow({
    super.key,
    required this.ikon,
    required this.label,
    required this.value,
    this.catatan,
  });

  final IconData ikon;
  final String label;
  final String value;
  final String? catatan;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(ikon),
      title: Text(label),
      subtitle: Text(catatan == null ? value : '$value • $catatan'),
    );
  }
}