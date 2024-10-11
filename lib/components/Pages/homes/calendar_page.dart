import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:todolist/state/navbar.dart';
import 'package:todolist/widget/menu.dart';
class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
    DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();
  DateTime _tody = DateTime.now();
 
  @override
  Widget build(BuildContext context) {
    return
    Scaffold(
      drawer: Menu(),
      appBar: Navbar(),
      body: 
Column(
        
      
        children: [
          Container(width: double.infinity,height: 80,
          decoration: BoxDecoration(
            color: Colors.red[100],
          ),
          child: Padding(padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Today,  ${DateFormat('dd').format(_tody)}'),
              Text('Calendar',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
            ],
          ),
          )
          
          ),
          TableCalendar(
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2030, 3, 14),
            focusedDay: _focusedDay,
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDay, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                
                _selectedDay = selectedDay;
                _focusedDay = focusedDay; // update focused day as well
              });
            },
            
            calendarFormat: CalendarFormat.month, // Can also be week or two weeks
            rowHeight: 70,
            
            
            startingDayOfWeek: StartingDayOfWeek.monday, // Customize starting day
            headerStyle: HeaderStyle(
              formatButtonVisible: false, // Hide the button that changes calendar format
               // Center the month name
              formatButtonShowsNext: true,
            ),
             calendarBuilders: CalendarBuilders(
          // Customize the current day cell
          todayBuilder: (context, date, _) {
            return Container(
              margin: EdgeInsets.all(4.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 50, 50, 50),
                shape: BoxShape.circle,
              ),
              child: Text(
                '${date.day}',
                style: TextStyle(color: Colors.white),
              ),
            );
          }),
            
            calendarStyle: CalendarStyle(
              todayDecoration: BoxDecoration(
                color: Color(0xffdc2d39),
                shape: BoxShape.circle,
              ),
              selectedDecoration: BoxDecoration(
                color:Color(0xff808080),
                shape: BoxShape.circle,
              ),
              tableBorder: TableBorder(
                top: BorderSide(
                  width: 1,
                  color: Color(0xff808080)
                ),
               

              ),
              tablePadding: EdgeInsets.all(10),
              outsideDaysVisible: false,
              

            selectedTextStyle: TextStyle(fontSize: 18),
            markersAutoAligned: false
            ),
          ),
          SizedBox(height: 20),
          // Display selected date
          Text(
            "Selected Date: ${DateFormat('yyyy-MM-dd').format(_selectedDay)}",
            style: TextStyle(fontSize: 18),
          ),
        ],
      ));  }
}