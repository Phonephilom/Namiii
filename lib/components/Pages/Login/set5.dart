import 'package:flutter/material.dart';

import 'package:todolist/state/category.dart';

import 'package:todolist/widget/lable_example.dart';
import 'package:todolist/widget/menu.dart';
import 'package:todolist/widget/status_example.dart';
import 'package:todolist/widget/tabbottom.dart';

class Set5 extends StatefulWidget {
  final Namecontroller;
  const Set5({super.key, required this.Namecontroller});

  @override
  State<Set5> createState() => _Set5State();
}

class _Set5State extends State<Set5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
      backgroundColor: Colors.red[100],
      leading:IconButton(onPressed: (){
        Scaffold.of(context).openDrawer();
      }, icon: Icon(Icons.menu),color: Color.fromARGB(255, 139, 3, 3),iconSize: 24,) ,
      title:Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
      child:  Container(
        width: 231,
        height: 30,
        child: TextField(
          
          decoration: InputDecoration(
          
            contentPadding: EdgeInsets.symmetric(horizontal: 8),
            hintText: widget.Namecontroller,
            hintStyle: TextStyle(fontSize: 14,color: Color.fromARGB(255, 28, 28, 28)),
             // Adding a hint text for better UX
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide.none,
            ),
            prefixIcon: Icon(Icons.search),
            prefixIconColor: Color(0xff808080),
            filled: true,
            fillColor: Colors.white, // Fill color for the TextField
          ),
        ),
      ),
      ),
      actions: [
       Container(
        
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10)
        ),
        child: IconButton(onPressed: (){}, icon: Image.asset('assets/images/5ba81043de1e72caf4f51076cc6ac82a(1).png'),),
       )
      ],

      
    ) ,
       drawer: Menu(),
      body: Stack(
        children: [
         
          Positioned(
            top: 30,
            right: 0,
            left: 0,
            
            child: Container(

              child:Column(
                children: [
               Padding(padding: const EdgeInsets.only(right: 260),child:    Text('Add Category',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),),
                   Category()
                ],
              ),
            )),
          Positioned(
            top: 130,
            right: 0,
            left: 0,
            
            child: StatusExample(isfunction: true,)),
          Positioned(
            top: 200,
            right: 0,
            left: 0,
            
            child: LableExample(isfunciton: true,)),
               Positioned(
              bottom: 50,
              left: 241,
              right: 20,
              child: Container(
                width: 100,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xffdc2d39),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Tabbottom()));
                  },
                  child: Text('Continue'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Color(0xffdc2d39),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}