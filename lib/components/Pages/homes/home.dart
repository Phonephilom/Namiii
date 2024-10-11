

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todolist/state/addtodo.dart';

import 'package:todolist/state/category.dart';
import 'package:todolist/state/navbar.dart';
import 'package:todolist/widget/menu.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
 
  DateTime _today = DateTime.now();
    final TextEditingController _todoController = TextEditingController();

   
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
            top: 165,
            right: 0,
            left: 0,
            child: Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
              color: Colors.white,
            ),
            
            child:Padding(padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            child:  Text('Today ${DateFormat('dd-M-yyyy').format(_today)} ',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
            )
          )),
          Positioned(
          top: 206,
          right: 0,
          left: 0,
          child: Container(
            width:double.infinity ,
            height: 600,
            decoration: BoxDecoration(
             
              color: Colors.white
            
            ),
            child: Addtodo(Namecontroller:_todoController),
          )),
          
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
      showDialog(context: context, builder: (context){
        return Dialog(
          backgroundColor: Colors.red[50],
          child: Column(
            children: [
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    
                  ),
                ),
              ),
            ],
          ),
        );
      });

      },child: Icon(Icons.add),
      
      backgroundColor: Color(0xffdc2d39),
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      
      ),
    );
  }
}

