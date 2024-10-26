import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:memorie_note_taking/screens/create_notes_screen.dart';
import 'package:memorie_note_taking/screens/home_screen.dart';
import 'package:memorie_note_taking/screens/folders_screen.dart';
import 'package:memorie_note_taking/screens/todo_screen.dart';

void main() {
  runApp(MaterialApp(
    title: 'Memorie',
    home: MainScreen(),
  ));
}

class MainScreen extends HookWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _currentIndex = useState(0);

    final List<Widget> _screens = [
      HomeScreen(),
      FoldersScreen(),
      TodoScreen(),
    ];

    return Scaffold(
        extendBody: true,
        body: SafeArea(
          bottom: false,
          child: _screens[_currentIndex.value],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 22, 102, 97),
          foregroundColor: Colors.white,
          shape: CircleBorder(),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CreateNotesScreen()));
          },
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          shape: CircularNotchedRectangle(),
          elevation: 0,
          clipBehavior: Clip.antiAlias,
          notchMargin: 8,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                onPressed: () {
                  _currentIndex.value = 0;
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.folder,
                  color: Colors.white,
                ),
                onPressed: () {
                  _currentIndex.value = 1;
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.list,
                  color: Colors.white,
                ),
                onPressed: () {
                  _currentIndex.value = 2;
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                onPressed: () {
                  _currentIndex.value = 0;
                },
              ),
            ],
          ),
        ));
  }
}
