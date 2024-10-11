import 'package:flutter/material.dart';

class Addtodo extends StatefulWidget {
 final TextEditingController Namecontroller;
  const Addtodo({super.key, required this.Namecontroller});

  @override
  State<Addtodo> createState() => _AddtodoState();
}

class _AddtodoState extends State<Addtodo> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
        leading: Icon(Icons.circle,size: 15,),
        title: Text(widget.Namecontroller.text), 
        trailing:   Image.asset('assets/images/ph_flag-pennant-duotone(4).png'),
        ),
      ],
    );
  }
}