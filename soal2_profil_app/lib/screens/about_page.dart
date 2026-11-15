import 'package:flutter/material.dart';


class AboutPage extends StatelessWidget{
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Me'),
        backgroundColor: Colors.brown,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Center(
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                'assets/images/profil.jpeg',
              ),
            ),
          ),

          const SizedBox(height: 16),
          const Center(
            child: Text(
              'Nabila Innas',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Center(
            child: Text('Mahasiswa Teknik Informatika'),
          ),
          const SizedBox(height: 24),
          const Text(
            'Tentang Saya',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Card(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Saya adalah mahasiswi yang tertarik dengan'
                'teknologi, desain grafis.'
                'Saya suka belajar hal baru dan menantang.',
              ),
            ),
          ),

          const SizedBox(height: 16),
          const Text(
            'Kemampuan dan Hobi',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Card(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.design_services),
                  title: Text('Desain Grafis'),
                ),
                ListTile(
                  leading: Icon(Icons.video_library),
                  title: Text('Video Editing'),
                ),
                ListTile(
                  leading: Icon(Icons.computer),
                  title: Text('Microsoft Office'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Riwayat Pendidikan',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const Card(
            child: Column(
              children:[
                ListTile(
                leading: Icon(Icons.school),
                title: Text('SDN 57 Sei Benteng'),
                subtitle: Text('2012 - 2017'),
                ),
                ListTile(
                  leading: Icon(Icons.school),
                  title: Text('SMPN 3 Sarolangun'),
                  subtitle: Text('2018 - 2021'),
                ),
                ListTile(
                  leading: Icon(Icons.school),
                  title: Text('SMK Kusuma Bangsa Tangerang'),
                  subtitle: Text('Multimedia | 2021 - 2024'),
                ),
                ListTile(
                  leading: Icon(Icons.school),
                  title: Text('Global Institute'),
                  subtitle: Text('Teknik Informatika | 2024 - Sekarang'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}