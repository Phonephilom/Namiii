import 'package:flutter/material.dart';

class Navbar extends StatefulWidget implements PreferredSizeWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();

  // Implementing the preferredSize property
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight); // Use standard AppBar height
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.red[100],
      leading:IconButton(onPressed: (){
        Scaffold.of(context).openDrawer();
      }, icon: Icon(Icons.menu),color: Color.fromARGB(255, 139, 3, 3),iconSize: 24,) ,
      title:Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
      child:  Container(
        width: 231,
        height: 30,
        child: TextField(
          style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 8),
            hintText: 'Search...',
            hintStyle: TextStyle(fontSize: 12,color: Color(0xff808080)),
            
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

      
    );
    
  }
}
