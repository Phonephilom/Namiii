import 'package:flutter/material.dart';
import 'package:todolist/state/navbar.dart';
import 'package:todolist/widget/menu.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Navbar(),
      drawer: Menu(),
    );
  }
}