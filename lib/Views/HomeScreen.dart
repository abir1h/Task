import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_flutter/Alerts& diDialogs/Dialog_Helper.dart';
import 'package:task_flutter/Views/Rough.dart';
import 'Dictionary.dart';
import 'Genarel_knowledge.dart';
import 'Calender.dart';
import 'Calculator.dart';
import 'Add_service.dart';


class Home_screen extends StatefulWidget {
  @override
  _Home_screenState createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var size = MediaQuery.of(context).size;

    final double itemHeight = (size.height - kToolbarHeight - 24) / 10;
    final double itemWidth = size.width / 3;

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 10.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
           color: Color(0xff6C63FE),
          ),
        ),
        title: Text("Tools",
            style: GoogleFonts.lato(
             color: Color(0xff6C63FE),
              fontSize: 26,
              fontWeight: FontWeight.w400,
            )),
        actions: [
          IconButton(
              icon: Icon(
                Icons.add,
               color: Color(0xff6C63FE),
                size: 40,
              ),
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>add_service()));
              })
        ],
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Goals Service",
                  style: GoogleFonts.lato(
                   color: Color(0xff6C63FE),
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  )),
              SizedBox(
                height: height / 40,
              ),
              GestureDetector(
                onTap: (){
                  Dialog_Helper.alert(context);
                  print('tap');},
                child: Container(
                  width: 120,
                  child: Center(
                    child: Text("Select Class",
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        )),
                  ),
                  decoration: BoxDecoration(
                   color: Color(0xff6C63FE),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(
                height: height / 5.5,
              ),
              Stack(
                clipBehavior: Clip.none,

                children: [
                  GestureDetector(
                    onTap: (){
                      print("tapped");
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>rough()));
                    },
                    child: Image.asset(
                      'Images/map.png',
                      height: height / 5,
                    ),
                  ),
                  Container(
                    child: CustomPaint(
                      painter: CirclePainter(),
                    ),
                  ),
                    Positioned(

                      child:  InkWell(
                        onTap: (){print('true');},
                        child: Container(
                          height: 100,
                          width: 130,
                          decoration: BoxDecoration(
                               color: Color(0xff6C63FE), shape: BoxShape.circle),
                          child: Center(
                            child: Text("Library",
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                )),
                          ),
                        ),
                      ),
                      top: -110.0,
                      left: 10.0,
                    ),
                  Positioned(
                    child: Container(
                      height: 90,
                      width: 130,
                      decoration: BoxDecoration(
                         color: Color(0xff6C63FE), shape: BoxShape.circle),
                      child: Center(
                        child: Text("Audio\nBook",
                            style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            )),
                      ),
                    ),
                    top: 130.0,
                    left: 10.0,
                  ),
                  Positioned(
                    child: Container(
                      height: 80,
                      width: 100,
                      decoration: BoxDecoration(
                         color: Color(0xff6C63FE), shape: BoxShape.circle),
                      child: Center(
                        child: Text("E-Book",
                            style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            )),
                      ),
                    ),
                    top: -30.0,
                    left: -90.0,
                  ),
                  Positioned(
                    child: Container(
                      height: 80,
                      width: 100,
                      decoration: BoxDecoration(
                         color: Color(0xff6C63FE), shape: BoxShape.circle),
                      child: Center(
                        child: Text("Academic\nNote",
                            style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            )),
                      ),
                    ),
                    top: -20.0,
                    left: 150.0,
                  ),
                  Positioned(
                    child: Container(

                      height: 80,
                      width: 100,
                      decoration: BoxDecoration(
                         color: Color(0xff6C63FE), shape: BoxShape.circle),
                      child: Center(
                        child: Text("Online\nExam",
                            style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            )),
                      ),
                    ),
                    top: 90.0,
                    left: 150.0,
                  ),
                  Positioned(
                    child: Container(
                      height: 80,
                      width: 100,
                      decoration: BoxDecoration(
                         color: Color(0xff6C63FE), shape: BoxShape.circle),
                      child: Center(
                        child: Text("Qustion\nBank",
                            style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            )),
                      ),
                    ),
                    top: 90.0,
                    left: -90.0,
                  ),
                ],
              ),
              SizedBox(
                height: height / 8,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: GridView.count(
                  childAspectRatio: (itemWidth / itemHeight),
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  children: [
                    GestureDetector(
                      onTap: () {
                        print("tapped on container");
                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>dictionary()));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                       color: Color(0xff6C63FE),
                        child: Stack(
                          children: <Widget>[
                            Center(
                              child: Image.asset('Images/dictionary.png', color: Colors.white24,height: 50,),
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: Text('Dictionary',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        print("tapped on container");
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>calender()));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                       color: Color(0xff6C63FE),
                        child: Stack(
                          children: <Widget>[
                            Center(
                              child: Icon(
                                Icons.calendar_today,
                                size: 60,
                                color: Colors.white24,
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: Text('Calender',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22.0,
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>CalcApp()));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                       color: Color(0xff6C63FE),
                        child: Stack(
                          children: <Widget>[
                            Center(
                              child: Icon(
                                Icons.calculate_outlined,
                                size: 60,
                                color: Colors.white24,
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: Text('Calculator',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22.0,
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>General_knowledge_screen()));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                       color: Color(0xff6C63FE),
                        child: Stack(
                          children: <Widget>[
                            Center(
                              child: Image.asset('Images/bulb.png', color: Colors.white24,height: 60,),
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: Text('General Knowledge',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(80, 70);

    final paint = Paint()
      ..color =  Color(0xff6C63FE)
      ..strokeWidth = 6
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(
      center,
      130,
      paint,
    );
  }

  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
