import 'package:flutter/material.dart';
import 'package:todolist/components/Pages/homes/calendar_page.dart';

import 'package:todolist/components/Pages/homes/home.dart';
import 'package:todolist/components/Pages/homes/user_page.dart';

class Tabbottom extends StatefulWidget {
  const Tabbottom({super.key});

  @override
  State<Tabbottom> createState() => _TabbottomState();
}

class _TabbottomState extends State<Tabbottom> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    List body = [
      Home(),
      CalendarPage(),
      UserPage()
    ];
    return Scaffold(
      body: body[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value)=> setState(() {
          currentindex = value;

        }),
        currentIndex: currentindex,
        items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),label: '',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.calendar_today),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: ''),
       

      ]),
    );
  }
}
