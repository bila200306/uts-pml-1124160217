import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget{
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context){
return Scaffold(
  appBar: AppBar(
    title: const Text('Profil Mahasiswa'),
    backgroundColor: Colors.brown,
    foregroundColor: Colors.white,
  ),
  body: Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const CircleAvatar(
        radius: 60,
        backgroundImage: AssetImage(
          'assets/images/profil.jpeg',
        ),
      ),
      const SizedBox(height: 16),
      const Text(
        'Nabila Innas',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 8),
      const Text('Software Engineering'),
      const SizedBox(height: 16),
      const Text('Profil Mahasiswa'),
    ],
  ),
),
);
  }
}