import 'package:flutter/material.dart';
import 'package:todolist/components/Pages/dasboard/dasboard2.dart';

class Dasboard1 extends StatelessWidget {
  const Dasboard1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Language',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Image.asset('assets/images/ion_language.png'),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 170,
                  height: 30,
                   decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Color(0xffdc2d39),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: OutlinedButton(
                    onPressed: () {},
                    child: ListTile(
                      leading: Image.asset(
                          'assets/images/emojione_flag-for-laos.png'),
                      trailing: Text(
                        'ພາສາລາວ',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffdc2d39)),
                      ),
                      titleAlignment: ListTileTitleAlignment.top,
                    ),
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: EdgeInsets.zero,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 170,
                  height: 30,
                   decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Color(0xffdc2d39),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: OutlinedButton(
                    onPressed: () {},
                    child: ListTile(
                      leading: Image.asset(
                          'assets/images/emojione_flag-for-thailand.png'),
                      trailing: Text(
                        'ภาษาไทย',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffdc2d39)),
                      ),
                      titleAlignment: ListTileTitleAlignment.top,
                    ),
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: EdgeInsets.zero,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 170,
                  height: 30,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Color(0xffdc2d39),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: OutlinedButton(
                    onPressed: () {},
                    child: ListTile(
                      leading: Image.asset(
                          'assets/images/emojione_flag-for-us-outlying-islands.png'),
                      trailing: Text(
                        'Engilsh',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffdc2d39)),
                      ),
                      titleAlignment: ListTileTitleAlignment.top,
                    ),
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: EdgeInsets.zero,
                    ),
                  ),
                ),
              ],
            )),
            Positioned(
              bottom: 20,
              right: 20,
              left: 20,
              child: Container(
                width: 335,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Dasboard2()));
                  },
                  child: Text('Continue'),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    backgroundColor: Color(0xffdc2d39),
                    foregroundColor: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
