import 'package:flutter/material.dart';

class StatusExample extends StatefulWidget {
  final bool isfunction;
  
  const StatusExample({super.key, required this.isfunction});

  @override
  State<StatusExample> createState() => _StatusExampleState();
}

class _StatusExampleState extends State<StatusExample> {

  int selectindex= 0;

  @override
  Widget build(BuildContext context) {
    
    return Container(
      width: double.infinity,
      height: 84,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          border: Border.all(
            color: Color.fromARGB(68, 128, 128, 128),
            width: 2,
            style: BorderStyle.solid,
          )),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Text('Status'),
              ),
              Row(
                children: [
                  Container(
                    child: GestureDetector(
                      child: Image.asset('assets/images/uiw_down.png'),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    child: GestureDetector(
                      child: Icon(
                        Icons.add,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: () {
                  if (widget.isfunction == true) {
                    // setState(() {
                    //   isactive = !isactive;
                    //   print(isactive);
                    // });
                    setState(() {
                      selectindex = 1;
                    });
                  }
                },
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                      // color: widget.isfunction == false
                      //     ? Color(0xff808080)
                      //     : isactive == true
                      //         ? Colors.white
                      //         : Color(0xff808080),
                      // shape: BoxShape.circle,
                      // border: Border.all(
                      //     color: widget.isfunction == false
                      //         ? Color(0xff808080)
                      //         : Colors.black
                       color: widget.isfunction == false
                          ? Color(0xff808080)
                          : selectindex != 1
                              ? Colors.white
                              : Color(0xff808080),
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: widget.isfunction == false
                              ? Color(0xff808080)
                              : Colors.black
                              )),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text('To do',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(131, 0, 0, 0),
                  )),
              SizedBox(
                width: 80,
              ),
              GestureDetector(
                onTap: () {
                  if (widget.isfunction == true) {
                    // if (isactive == true) {
                    //   isactive = false;
                    // }
                    // if (complete == true) {
                    //   complete = false;
                    // }
                    // setState(() {
                    //   inpregress = !inpregress;
                    //   print(inpregress);
                    // });
                    setState(() {
                      selectindex = 2;
                    });
                  }
                },
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                      color: widget.isfunction == false
                          ? Colors.yellow
                          : selectindex != 2
                              ? Colors.white
                              : Colors.yellow,
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: widget.isfunction == false
                              ? Colors.yellow
                              : Colors.black)),
                ),
              ),
              //  Icon(Icons.circle,size:15 ,color: Color(0xffFFCA28),),
              SizedBox(
                width: 5,
              ),
              Text('In pregress',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(131, 0, 0, 0),
                  )),

              SizedBox(
                width: 80,
              ),
              GestureDetector(
                onTap: () {
                  if (widget.isfunction == true) {
                    // setState(() {
                    //   complete = !complete;
                    //   print(complete);
                    // });
                    setState(() {
                      selectindex = 3;
                    });
                  }
                },
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                      color: widget.isfunction == false
                          ? Color(0xff3AFF07)
                          : selectindex != 3
                              ? Colors.white
                              : Color(0xff3AFF07),
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: widget.isfunction == false
                              ? Color(0xff3AFF07)
                              : Colors.black)),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text('Complete',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(131, 0, 0, 0),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
