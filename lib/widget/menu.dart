import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
    child: ListView(
      children: [
        DrawerHeader(child: Image.asset('assets/images/logo.png')),
        ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              // Navigate to the Home screen
              Navigator.pop(context); // Close the drawer
            },
          )
      ],
    ),
      
    );
  }
}