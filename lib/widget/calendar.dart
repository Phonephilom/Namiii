import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  DateTime _focusedDay = DateTime.now();
  DateTime _selectedDay = DateTime.now();
  Map<CalendarFormat, String> availableCalendarFormats = const {CalendarFormat.month : 'Month', CalendarFormat.twoWeeks : '2 weeks', CalendarFormat.week : 'Week'};
  @override
  Widget build(BuildContext context) {
    
    return Column(children: [
      Padding(padding: const EdgeInsets.only(right: 280,top: 10),
      child:  Image.asset('assets/images/solar_calendar-broken.png'),
      ),
      Padding(padding: const EdgeInsets.symmetric(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        Padding(padding: const EdgeInsets.only(),
      child:Column(children: [
       Text('Start date',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff808080)),),
       OutlinedButton(onPressed: (){}, child: Text('Set date    +',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff808080))),
       style: OutlinedButton.styleFrom(
        side: BorderSide(
          width: 1,
          color: Color(0xffdc2d39),
           
        ),
        foregroundColor: Color(0xff808080),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8)
        )
       ),

       ),
      ],),
      
      ),
      Padding(padding: const EdgeInsets.only(),
      child:Column(children: [
       Text('due date',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff808080))),
       OutlinedButton(onPressed: (){}, child: Text('Set date     +',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff808080))),
       style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8)
        ),
        side: BorderSide(
          width: 1,
          color: Color(0xffdc2d39),

        ),
        foregroundColor: Color(0xff808080),
       ),
       ),
       
      ],),
      
      ),
      ],),
      ),
      TableCalendar( firstDay: DateTime.utc(2010, 10, 16),
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
            calendarFormat: CalendarFormat.month,
            startingDayOfWeek: StartingDayOfWeek.monday,
           headerStyle: HeaderStyle(
            formatButtonShowsNext: false,
            formatButtonVisible: true,
            titleTextStyle: TextStyle(fontSize: 10,fontWeight: FontWeight.w400),
           titleTextFormatter: (date, locale) {
               return DateFormat('MMMM yyyy').format(date).toUpperCase();
           },
             rightChevronMargin : const EdgeInsets.symmetric(horizontal: 20),
            
           ),
         calendarStyle: CalendarStyle(
          outsideDaysVisible: false,
          tableBorder: TableBorder(top: BorderSide(width: 1,color: Color(0xff808080)))
         ),
        
    
    ),
    
    ],);
  }
}