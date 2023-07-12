import 'package:flutter/material.dart';
import 'package:harmonyhub/home.dart';
import 'package:harmonyhub/music.dart';
import 'package:harmonyhub/playlist.dart';
import 'package:harmonyhub/profile.dart';

void main() => {runApp(MyApp())};

class MyApp extends StatelessWidget {
  final Color myColor = Color.fromRGBO(29, 11, 45, 1);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Harmony Hub',
        theme: ThemeData(
          colorScheme: ColorScheme.dark(
            primary: Colors.blue,
            secondary: Colors.black26,
            background: Colors.black, // set background color here
          ),
        ),
        home: MyAppPage());
  }
}

class MyAppPage extends StatefulWidget {
  const MyAppPage({super.key});

  @override
  State<MyAppPage> createState() => _MyAppPageState();
}

class _MyAppPageState extends State<MyAppPage> {
  @override
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    // Text('home'),
    Home(),
    // FavoritesScreen(1),
    // Text('playlsit'),
    PlayList(),
    PlayMusic(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Harmony Hub",
          style: TextStyle(color: Color.fromARGB(255, 0, 247, 238)),
        ),
      ),
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color.fromARGB(255, 252, 26, 225),
        unselectedItemColor: Color.fromARGB(255, 0, 255, 247),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'discover'),
          BottomNavigationBarItem(
              icon: Icon(Icons.music_note), label: 'playlist'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile')
        ],
        onTap: _onItemTapped,
      ),
    );
  }
}
