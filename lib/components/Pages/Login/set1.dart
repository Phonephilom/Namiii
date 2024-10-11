import 'package:flutter/material.dart';
import 'package:todolist/components/Pages/Login/set2.dart';
import 'package:todolist/state/navbar.dart';
import 'package:todolist/widget/input_field.dart';
import 'package:todolist/widget/menu.dart';



class Set1 extends StatefulWidget {
  const Set1({super.key});

  @override
  State<Set1> createState() => _Set1State();
}

class _Set1State extends State<Set1> {
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
          child: Navbar() ,),
          Positioned(
            top: 80,
            right: 0,
            left: 0,
            child: Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.red[100],
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(120),bottomRight: Radius.circular(120))
              ),
              child: Column(
                
                children: [
                  Padding(padding: const EdgeInsets.only(right: 120),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hello!!',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                  Text("Let's make your work more convenient and easier.",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color: const Color.fromARGB(110, 0, 0, 0)),),


                    ],
                  ) ,
                  ),
                  
                  Padding(padding: const EdgeInsets.symmetric(vertical: 15),
                  child:Column(children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration:BoxDecoration(
                      color: Color(0xffD9D9D9),
                      borderRadius: BorderRadius.circular(50),

                    ),
                    child: Image.asset('assets/images/ph_user-duotone.png'),

                  ),
                  SizedBox(height: 5,),
                  Text('Profiel',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color: Color.fromARGB(209, 0, 0, 0)),),
                  ],) ,
                  ),
                ],
              ),
            ) ),


            Positioned(
              top: 300,
              right: 0,
              left: 0,
              child: Column(
              children: [
                Padding(padding: const EdgeInsets.only(right: 270),

                child: Text('Name',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400),),
                ),
              InputField(),
              
              Padding(padding: const EdgeInsets.only(right: 270,top: 25),

                child: Text('Email',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400),),
                ),
                InputField(),
              ],
            )),

           Positioned(
            bottom: 20,
            right: 20,
            left: 20,
            child: Container(
              width: 335,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Set2 ()));
                },
                child: Text('Continue'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Color(0xffdc2d39),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
          ),
      ],
    ),
    
    );
  }
}