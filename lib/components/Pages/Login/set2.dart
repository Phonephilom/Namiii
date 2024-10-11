import 'package:flutter/material.dart';
import 'package:todolist/components/Pages/Login/set3.dart';
import 'package:todolist/state/category.dart';
import 'package:todolist/state/navbar.dart';
import 'package:todolist/widget/lable_example.dart';
import 'package:todolist/widget/status_example.dart';
import 'package:todolist/widget/menu.dart';


class Set2 extends StatelessWidget {
  const Set2({super.key});

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
          child:Navbar() ),

          Positioned(
            top: 80,
            right: 0,
            left: 0,
            child: Container(
            width:double.infinity ,
            height: 90,
            color: Colors.red[100],
            child: Category() ,
          ),),

         Positioned(
          top: 160,
          right: 0,
          left: 0,
          child: StatusExample(isfunction: false,)),
         Positioned(
          top: 240,
          right: 0,
          left: 0,
          child: LableExample(isfunciton: false,)),
      ],
     ),
     floatingActionButton: FloatingActionButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Set3()));
     },child: Icon(Icons.add),
     foregroundColor: Colors.white,
     backgroundColor: Color(0xffdc2d39),
     shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
      
     ),
     ),
    );
  }
}