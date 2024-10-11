import 'package:flutter/material.dart';
import 'package:todolist/state/navbar.dart';
import 'package:todolist/widget/menu.dart';

class Set4 extends StatelessWidget {
  const Set4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       drawer: Menu(),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            
            child: Navbar()),

        ],
      ),
    );
  }
}