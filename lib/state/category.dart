import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(),
    child: Row(
      children: [
       Padding(padding: const EdgeInsets.only(top: 10,left: 50),child:  GestureDetector(
          onTap: (){
            print('Folder');
          },
          child:Column(children: [
            Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset('assets/images/flat-color-icons_folder.png'),
          ) ,
          SizedBox(height: 6,),
          Text('Folder',style: TextStyle(fontSize: 8,fontWeight: FontWeight.w400,color: Color(0xff808080)),)
          ],)
          ),),
       Padding(padding: const EdgeInsets.only(top: 10,left: 50),child:  GestureDetector(
          onTap: (){
            print('Favorites list');
          },
          child:Column(children: [
            Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset('assets/images/f7_square-favorites-alt.png'),
          ) ,
          SizedBox(height: 6,),
          Text('Favorites list',style: TextStyle(fontSize: 8,fontWeight: FontWeight.w400,color: Color(0xff808080)),)
          ],)
          ),),
       Padding(padding: const EdgeInsets.only(top: 10,left: 50),child:  GestureDetector(
          onTap: (){
            print('Pesonalized');
          },
          child:Column(children: [
            Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset('assets/images/ri_folder-user-fill.png'),
          ) ,
          SizedBox(height: 6,),
          Text('Pesonalized',style: TextStyle(fontSize: 8,fontWeight: FontWeight.w400,color: Color(0xff808080)),)
          ],)
          ),),
       Padding(padding: const EdgeInsets.only(top: 10,left: 50),child:  GestureDetector(
          onTap: (){
            print('Rebuild');
          },
          child:Column(children: [
            Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset('assets/images/material-symbols_add-ad-outline.png'),
          ) ,
          SizedBox(height: 6,),
          Text('Rebuild',style: TextStyle(fontSize: 8,fontWeight: FontWeight.w400,color: Color(0xff808080)),)
          ],)
          ),),
      ],
    ),
    );
  }
}