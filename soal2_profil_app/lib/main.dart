
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
      title: 'Profil Mahasiswa',
      theme: ThemeData(
        colorSchemeSeed: Colors.brown,
        useMaterial3: true,
      ),
      home: const HalamanProfil(),
    );
  }
}

class HalamanProfil extends StatelessWidget {
  const HalamanProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: const Color(0xFFF8F5F2),
     appBar: AppBar(
      title: const Text('Profil Mahasiswa'),
      centerTitle: true,
      backgroundColor: Colors.brown,
      foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [ const SizedBox(height: 20),
          
          const CircleAvatar(
            radius: 65,
            backgroundImage: AssetImage('assets/images/profil.jpeg',),
          ),
           
          const SizedBox(height: 15),
          const Text(
            'Nabila Innas',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            'Mahasiswa Software Engineering',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 25),
          Card(
            child: Column(
              children: const[
                ListTile(
                  leading: Icon(Icons.badge_outlined),
                  title: Text('NIM'),
                  subtitle: Text('1124160217'),
                ),
                Divider(height: 1),
                ListTile(
                  leading: Icon(Icons.school_outlined),
                  title: Text('Program Studi'),
                  subtitle: Text('Software Engineering'),
                ),
                Divider (height: 1),
                ListTile( 
                leading: Icon(Icons.groups_outlined),
                title: Text('Kelas'),
                subtitle: Text('TI24SE.M'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: const[
                  Text(
                    'Tentang Saya',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                  'Hallo! Saya Nabila Innas, Mahasiswa Semester 5 '
                  'Dengan Jurusan Software Engineering yang tertarik'
                  'dengan teknologi, desain grafis.',),
                ],
              ),
            ),
          ),
          
          ]
        )
      )
    );
  }
}
