import 'package:flutter/material.dart';
import 'package:todolist/components/Pages/Login/set1.dart';


class Dasboard3 extends StatelessWidget {
  const Dasboard3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned(
            top: 50,
            right: 60,
            left: 60,
            child: Column(
              children: [
                Text(
                  "Special offer for new users",
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff808080)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Organize with ',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '  50% ',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffed4c5c)),
                    ),
                    Text(
                      '!',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ],
            )),
        Positioned(
            top: 40,
            right: 10,
            child: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Set1()));
                },
                icon: Icon(
                  Icons.cancel,
                  color: Color(0xffdc2d39),
                  size: 25,
                ))),
        Positioned(
          top: 120,
          left: 90,
          right: 60,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                      width: 63,
                      height: 63.75,
                      decoration: BoxDecoration(
                        color: Color(0xffed4c5c),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                              top: 10,
                              left: 2,
                              right: 2,
                              child: Image.asset(
                                  'assets/images/Rectangle 20.png')),
                          Positioned(
                            top: 7,
                            left: 4,
                            child: Image.asset(
                              'assets/images/fluent_list-rtl-20-filled.png',
                            ),
                          ),
                        ],
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 63,
                    height: 63.75,
                    decoration: BoxDecoration(
                      color: Color(0xffEDE62C),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                            top: 10,
                            left: 2,
                            right: 2,
                            child:
                                Image.asset('assets/images/Rectangle 20.png')),
                        Positioned(
                          top: 12,
                          left: 4,
                          child: Image.asset(
                            'assets/images/line-md_check-list-3-twotone.png',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                      width: 63,
                      height: 63.75,
                      decoration: BoxDecoration(
                        color: Color(0xffE69856),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                              top: 10,
                              left: 2,
                              right: 2,
                              child: Image.asset(
                                  'assets/images/Rectangle 20.png')),
                          Positioned(
                            top: 7,
                            left: 4,
                            child: Image.asset(
                              'assets/images/arcticons_to-do-list-1.png',
                            ),
                          ),
                        ],
                      )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                      width: 63,
                      height: 63.75,
                      decoration: BoxDecoration(
                        color: Color(0xffA07FB9),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                              top: 10,
                              left: 2,
                              right: 2,
                              child: Image.asset(
                                  'assets/images/Rectangle 20.png')),
                          Positioned(
                            top: 7,
                            left: 4,
                            child: Image.asset(
                              'assets/images/lucide_list-todo.png',
                            ),
                          ),
                        ],
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                      width: 145,
                      height: 63.75,
                      decoration: BoxDecoration(
                        color: Color(0xff8BB97F),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                              left: 50,
                              top: 4,
                              bottom: 4,
                              child: Image.asset(
                                  'assets/images/Rectangle 26.png')),
                          Positioned(
                            top: 7,
                            left: 4,
                            child: Image.asset(
                              'assets/images/fluent_window-bullet-list-add-20-regular.png',
                            ),
                          ),
                          Positioned(
                            top: 6,
                            left: 50,
                            child: Image.asset(
                              'assets/images/solar_list-line-duotone.png',
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ],
          ),
        ),

        Positioned(
            top: 300,
            left: 20,
            right: 20,
            child: Column(
              children: [
                Container(
                  width: 500,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xFFD5D4D4),
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Color(0xffdc2d39),
                      width: 1.5,
                      style: BorderStyle.solid
                    )
                  ),
                  child: ListTile(
                      onTap: () {},
                      leading: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Anual',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffdc2d39)),
                          ),
                          
                          Text(
                            '\$42',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffdc2d39)),
                          ),
                        ],
                      ),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text('\$3,50/week',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xffdc2d39)),),
                         Text('\$4,00/week',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,decoration: TextDecoration.lineThrough,color: Color(0xff808088)))],
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 500,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xFFD5D4D4),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ListTile(
                      onTap: () {},
                      leading: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('6 Months',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff808088)),),
                          Text('\$22,80',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff808088)),),
                        ],
                      ),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text('\$3,80/week',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff808088)),),  Text('\$4,00/week',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,decoration: TextDecoration.lineThrough,color: Color(0xff808088)))],
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 500,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xFFD5D4D4),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ListTile(
                    onTap: () {},
                    leading: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Months',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff808088)),),
                        Text('\$16',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff808088)),),
                      ],
                    ),
                    trailing: Text('\$4,00/week',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff808088)),),
                  ),
                ),
              ],
            )),
            
        Positioned(
          top: 290,
            left: 160,
            right: 160,
          child:Container(
          width: 100,
          height: 21.25,
          decoration: BoxDecoration(
            color: Color(0xffdc2d39),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text('best value',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w400),),
        ) ),
        Positioned(
          bottom: 200,
          left: 20,
          right: 20,
          child: Container(
            width: 335,
            height: 53.12,
            decoration: BoxDecoration(
              color: Color(0xffdc2d39),
              borderRadius: BorderRadius.circular(5),
            ),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Set1()));
                },
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Start Free Trial',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      '3 days free then \$42,00/year',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffdc2d39),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ))),
          ),
        ),
        Positioned(
          bottom: 150,
          right: 20,
          left: 20,
          child: Column(
            children: [
              Text(
                'After free trial, payment will be charged to your Apple ID account at confirmation of purchase',
                style: TextStyle(
                    fontSize: 7,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFC1BFBF)),
              ),
              Text(
                'Your account will be charged for renewal within 24 hours before the end of the current period, ',
                style: TextStyle(
                    fontSize: 7,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFC1BFBF)),
              ),
              Text(
                'unless canceled at least 24 hours before the end of the current period. You can manage and ',
                style: TextStyle(
                    fontSize: 7,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFC1BFBF)),
              ),
              Text(
                'cancel your subscription by going to your Account Settings',
                style: TextStyle(
                    fontSize: 7,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFC1BFBF)),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 100,
          right: 120,
          left: 120,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Term',
                    
                    style: TextStyle( color: Color(0xFFC1BFBF),fontSize: 7,fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Text(
                '|',
                style: TextStyle( color: Color(0xFFC1BFBF),fontSize: 7,fontWeight: FontWeight.w400),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Privacy Policy',
                    style: TextStyle( color: Color(0xFFC1BFBF),fontSize: 7,fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Text(
                '|',
                style: TextStyle( color: Color(0xFFC1BFBF),fontSize: 7,fontWeight: FontWeight.w400),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Refund',
                    style: TextStyle( color: Color(0xFFC1BFBF),fontSize: 7,fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
