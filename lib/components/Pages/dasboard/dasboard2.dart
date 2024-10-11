import 'package:flutter/material.dart';
import 'package:todolist/components/Pages/dasboard/dasboard3.dart';

class Dasboard2 extends StatelessWidget {
  const Dasboard2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 100,
            right: 60,
            left: 60,
            child: Column(
              children: [
                Text(
                  'Welcome to work',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                Text(
                  'Notlist',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffdc2d39)),
                ),
              ],
            ),
          ),
          Positioned(
            top: 250,
            right: 60,
            left: 60,
            child: Container(
              height: 300, // Set a fixed height for the ListView
              child: ListView(
                children: [
                  ListTile(
                    leading: Image.asset(
                        'assets/images/heroicons_document-check-solid.png'),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Create Tasks Easily',
                          style:
                              TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          'Create tasks with just one tap. Plan your',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff808080)),
                        ),
                        Text(
                          'schedule efficiently',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff808080)),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    leading:
                        Image.asset('assets/images/mdi_timer-check-outline.png'),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Instant Reminders',
                          style:
                              TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          'Set reminders to never miss a deadline',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff808080)),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    leading: Image.asset('assets/images/cbi_office.png'),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Customizable Widgets',
                          style:
                              TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          'Customize your desk widget to see a quick',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff808080)),
                        ),
                        Text(
                          'overview of your tasks',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff808080)),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    leading:
                        Image.asset('assets/images/ri_color-filter-fill.png'),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Beautiful Themes',
                          style:
                              TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          'Choose your favorite beautiful theme and',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff808080)),
                        ),
                        Text(
                          'start a great day.',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff808080)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
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
                      MaterialPageRoute(builder: (context) => Dasboard3()));
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
