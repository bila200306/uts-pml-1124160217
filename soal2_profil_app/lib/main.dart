
import 'package:flutter/material.dart';
import 'screens/profile_page.dart';
import 'screens/about_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil Mahasiswa',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.brown,
        ),
        useMaterial3: true,
       ),
       home: const MainPage(
       ),
    );
  }
}

class MainPage extends StatefulWidget{
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int halamanAktif = 0;

  final List<Widget> halaman = [
    const ProfilePage(),
    const AboutPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: halaman[halamanAktif],
    bottomNavigationBar: BottomNavigationBar(
  currentIndex: halamanAktif,
  selectedItemColor: Colors.brown,

  onTap: (index) {
    setState(() {
      halamanAktif = index;
    });
  },

  items: const [
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Profil',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.info),
      label: 'About Me',
    ),
  ],
),
    );
  }
}