import 'package:flutter/material.dart';

import 'package:todolist/components/Pages/Login/set5.dart';
// import 'package:todolist/widget/calendar.dart';
import 'package:todolist/state/navbar.dart';
import 'package:todolist/widget/calendar.dart';
import 'package:todolist/widget/menu.dart';

class Set3 extends StatefulWidget {
  const Set3({super.key});

  @override
  State<Set3> createState() => _Set3State();
}

class _Set3State extends State<Set3> {
  
TextEditingController Namecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    
    // ignore: unused_local_variable
   
    return Scaffold(
      drawer: Menu(),
      body: Stack(
        children: [
          Positioned(top: 0, right: 0, left: 0, child: Navbar()),
          Positioned(
            top: 100,
            right: 80,
            left: 50,
            child: Container(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "|Untitled",
                  hintStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                controller: Namecontroller,
              ),
            ),
          ),
          Positioned(
            top: 120,
            right: 80,
            left: 50,
            child: Container(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Tap to add a description....",
                  hintStyle:
                      TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  
                ),
              ),
            ),
          ),
          Positioned(
            top: 150,
            right: 80,
            left: 10,
            child:TextButton(
  onPressed: () {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0), // Optional: To add rounded corners
          ),
          child: Container(
            height: 700, // Set the height of the dialog
             // Set width to 80% of screen width
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Calendar(), // Your Calendar widget here
           ListTile(
                onTap: (){},
                leading: Icon(Icons.add_alarm_outlined),
                title: Text('Add Time'),
                trailing: Icon(Icons.add),
                iconColor: Color(0xffdc2d39),
                titleTextStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xffdc2d39)),
                
               ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Container(width:100 ,height: 30,
                child: ElevatedButton(onPressed: (){}, child: Text('Cancel'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  backgroundColor: Color.fromARGB(131, 128, 128, 128),
                  foregroundColor: Color(0xff808080)
                ),
                ),
                ),
               Container(width:100 ,height: 30,
               
                child: ElevatedButton(onPressed: (){}, child: Text('Done'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),

                  ),
                  backgroundColor: Color(0xffdc2d39),
                  foregroundColor: Colors.white,
                ),
                ),
                ),
               ],)
              ],
            ),
          ),
        );
      },
    );
  },
  child: Row(
    children: [
      Image.asset('assets/images/solar_calendar-broken.png'),
      Text('Set date'),
    ],
  ),
)
          ),
          Positioned(
              top: 520,
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
                        MaterialPageRoute(builder: (context) => Set5(Namecontroller: Namecontroller.text,)));
                  },
                  child: Text('Next'),
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

