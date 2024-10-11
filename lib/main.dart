import 'package:flutter/material.dart';
import 'package:todolist/components/Pages/dasboard/dasboard.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Dasboard(),
    );
  }
}
void main(){
  runApp( MyApp());
}
 