import 'package:flutter/material.dart';

class LableExample extends StatefulWidget {
  final bool isfunciton;
  const LableExample({super.key, required this.isfunciton});

  @override
  State<LableExample> createState() => _LableExampleState();
}

class _LableExampleState extends State<LableExample> {
  bool Study = false;
  bool Sport = false;
  bool Work = false;
  bool Personal = false;
  int selectindex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 119,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Color.fromARGB(68, 128, 128, 128),
            width: 1,
            style: BorderStyle.solid,
          )),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Text('Lables '),
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
              ),
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
                  if (widget.isfunciton == true) {
                    // setState(() {
                    //   Study = !Study;
                    // });
                    setState(() {
                      selectindex = 1;
                    });
                  }
                },
                child: widget.isfunciton == false
                    ? Image.asset('assets/images/ph_flag-pennant-duotone.png')
                    : selectindex != 1
                        ? Image.asset(
                            'assets/images/ph_flag-pennant-duotone(4).png')
                        : Image.asset(
                            'assets/images/ph_flag-pennant-duotone.png'),
              ),
              SizedBox(
                width: 5,
              ),
              Text('Study',
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
                  if (widget.isfunciton == true) {
                    // setState(() {
                    //   Sport = !Sport;
                    // });
                    setState(() {
                      selectindex = 2;
                    });
                  }
                },
                child: widget.isfunciton == false
                    ? Image.asset(
                        'assets/images/ph_flag-pennant-duotone(1).png')
                    : selectindex != 2
                        ? Image.asset(
                            'assets/images/ph_flag-pennant-duotone(4).png')
                        : Image.asset(
                            'assets/images/ph_flag-pennant-duotone(1).png'),
              ),
              SizedBox(
                width: 5,
              ),
              Text('Sport',
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
                  if (widget.isfunciton == true) {
                    // setState(() {
                    //   Work = !Work;
                    // });
                    setState(() {
                      selectindex = 3;
                    });
                  }
                },
                child: widget.isfunciton == false
                    ? Image.asset(
                        'assets/images/ph_flag-pennant-duotone(2).png')
                    : selectindex != 3
                        ? Image.asset(
                            'assets/images/ph_flag-pennant-duotone(4).png')
                        : Image.asset(
                            'assets/images/ph_flag-pennant-duotone(2).png'),
              ),
              SizedBox(
                width: 5,
              ),
              Text('Work',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(131, 0, 0, 0),
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    // setState(() {
                    //   Personal = !Personal;
                    // });
                   setState(() {
                     selectindex = 4;
                   });
                  },
                  child: widget.isfunciton == false
                      ? Image.asset(
                          'assets/images/ph_flag-pennant-duotone(3).png')
                      : selectindex != 4
                          ? Image.asset(
                              'assets/images/ph_flag-pennant-duotone(4).png')
                          : Image.asset(
                              'assets/images/ph_flag-pennant-duotone(3).png'),
                ),
                SizedBox(
                  width: 5,
                ),
                Text('Personal',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(131, 0, 0, 0),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
