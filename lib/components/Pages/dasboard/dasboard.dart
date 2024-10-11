

import 'package:flutter/material.dart';
import 'package:todolist/components/Pages/dasboard/dasboard1.dart';

class Dasboard extends StatelessWidget {
  const Dasboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 50,
            right: 60,
            left: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.png'),
              SizedBox(width: 10,),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Notlist',style: TextStyle(fontSize:20,fontWeight:FontWeight.w700 ),),
                  Text('to do list and assign implement',style:TextStyle(fontSize: 10,fontWeight: FontWeight.w400) ,),
                ],
              )
            ],
          )),

          Positioned(
            top: 150,
            right: 60,
            left: 60,
            child:Column(children: [
            Image.asset('assets/images/imh1.png'),
            Image.asset('assets/images/Line 1.png'),
          const  SizedBox(height: 5,),
            const Text('Personalized to the ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
            const Text('way you work',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
           const SizedBox(height: 15,),
            const Text('Tasks, Docs, Goals, and Chat -',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color: Color(0xff808080)),),
            const Text('customizable to work for everyone',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color: Color(0xff808080)),),
          ],)),

          Positioned(
            bottom: 20,
            right: 20,
            left: 20,

            child: Container(
            width: 335,
            height: 40,
            child: ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Dasboard1()));
            }, child: const Text('Start'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xffdc2d39),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              )
            ),
            ),
          ))
        ],
      ),
    );
  }
}
