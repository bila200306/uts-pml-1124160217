import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Profil Mahasiswa',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark),
      ),
      themeMode: ThemeMode.system,
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget{
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Ini adalah Profile Mahasiswi Nabila Innas'),
                ),
              );
            })
        ]
      ),
      body: SafeArea(child: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.deepPurple,
              child: Icon(
                Icons.person, size: 50, color: Colors.white,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Nama : Nabila Innas',
              style: Theme.of(context).textTheme.headlineSmall,),
              const SizedBox(height: 8),
              Text(
                'NIM : 1124160217',
                style: Theme.of(context).textTheme.headlineMedium,),
                const SizedBox(height: 8),
                Text(
                  'Program Studi : Teknik Informatika',
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,),

              const SizedBox(height: 25),
              Card(
                child: Column(
                  children: const[
                    InfoTile(icon: Icons.email,
                    title: 'Email',
                    value: 'nabilainnas3@gmail.com',),
                  InfoTile(
                    icon: Icons.phone,
                    title: 'No.Hp',
                    value: '082373648103',
                  ),
                  InfoTile(
                    icon: Icons.class_,
                    title: 'Kelas',
                    value: 'Software Engineering',
                  ),
                  ]
                )
              )
          ]
        ),
        ),
      ),
      ),
    );
  }
}

class InfoTile extends StatelessWidget{
  final IconData icon;
  final String title;
  final String value;

  const InfoTile({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
  });

@override
Widget build(BuildContext context){
  return ListTile(
    leading: Icon(icon),
    title: Text(title),
    subtitle: Text(value),
  );
}
}