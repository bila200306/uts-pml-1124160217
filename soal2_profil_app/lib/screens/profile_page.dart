import 'package:flutter/material.dart';
import '../models/profile.dart';
import 'edit_profile_page.dart';


class ProfilePage extends StatefulWidget{
  const ProfilePage({super.key});

  @override
 State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>{
  Profile profile = Profile(
    nama: 'Nabila Innas',
    nim: '1124160217',
    prodi: 'Teknik Informatika',
    kelas: 'TI24SE.M',
    email: 'nabilainnas@gmail.com',
    hp: '082373648103',
    github: 'github.com/bila200306',
    bio: 'Mahasiswi yang tertarik dengan teknologi dan desain',
  );

  Future<void> bukaEditProfil() async{
    final hasil = await Navigator.push<Profile>(
      context,
      MaterialPageRoute(
        builder: (context) => EditProfilePage(
          profile: profile,
        ),
      ),
    );

    if (hasil != null){
      setState((){
        profile = hasil;
      });
    }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Mahasiswa'),
        backgroundColor: Colors.brown,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: bukaEditProfil,
            icon: const Icon(Icons.edit),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const SizedBox(height: 20),
          Center(
            child: CircleAvatar(
              radius: 60,
              backgroundImage: const AssetImage('assets/images/profil.jpeg',),
            ),
          ),

          const SizedBox(height: 16),
          Center(
            child: Text(
              profile.nama,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Center(
            child: Text(profile.prodi),
          ),
          const SizedBox(height: 24),
          Card(
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.badge),
                  title: const Text('NIM'),
                  subtitle: Text(profile.nim),
                ),
                ListTile(
                  leading: const Icon(Icons.school),
                  title: const Text('Kelas'),
                  subtitle: Text(profile.kelas),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.email),
                  title: const Text('Email'),
                  subtitle: Text(profile.email),
                ),
                ListTile(
                  leading: const Icon(Icons.phone),
                  title: const Text('Nomor HP'),
                  subtitle: Text(profile.hp),
                ),
                ListTile(
                  leading: const Icon(Icons.code),
                  title: const Text('Github'),
                  subtitle: Text(profile.github),
                ),
              ],
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Tentang Saya'),
              subtitle: Text(profile.bio),
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton.icon(
            onPressed: bukaEditProfil,
            icon: const Icon(Icons.edit),
            label: const Text('Edit Profil'),
          ),
        ],
      ),
    );
  }
}