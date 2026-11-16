
import 'package:flutter/material.dart';
import 'screens/profile_page.dart';
import 'screens/about_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  ThemeMode themeMode = ThemeMode.light;

  void ubahTema(){
    setState((){
      themeMode = themeMode == ThemeMode.light ?
      ThemeMode.dark:
      ThemeMode.light;
    });
  }


@override
Widget build(BuildContext context){
  return MaterialApp(
    title: 'Profil Mahasiswa',
    debugShowCheckedModeBanner: false,
    themeMode: themeMode,
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown,
      brightness: Brightness.light,
      ),
      useMaterial3: true,
    ),
    darkTheme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown,
      brightness: Brightness.dark,
      ),
      useMaterial3: true,
    ),

    home: MainPage(
      onToggleTheme: ubahTema,
      isDarkMode: themeMode == ThemeMode.dark,
    ),
  );
}
}
class MainPage extends StatefulWidget{
  final VoidCallback onToggleTheme;
  final bool isDarkMode;

const MainPage({
  super.key,
  required this.onToggleTheme,
  required this.isDarkMode,
});
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

      floatingActionButton: FloatingActionButton(
        onPressed: widget.onToggleTheme,
        tooltip: 'Ganti Tema',
        child: Icon(widget.isDarkMode ? Icons.light_mode : Icons.dark_mode,
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: halamanAktif,
        selectedItemColor: Colors.brown,
        onTap: (index) {
          setState((){
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