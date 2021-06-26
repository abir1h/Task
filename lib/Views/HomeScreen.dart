import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            color: Colors.deepPurple,
          ),
        ),
        title: Text("Tools",
            style: GoogleFonts.lato(
              color: Colors.deepPurple,
              fontSize: 26,
              fontWeight: FontWeight.w400,
            )),
        actions: [
          IconButton(
              icon: Icon(
                Icons.add,
                color: Colors.deepPurple,
                size: 40,
              ),
              onPressed: () {})
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Goals Service",
                  style: GoogleFonts.lato(
                    color: Colors.deepPurple,
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  )),
              SizedBox(
                height: height / 40,
              ),
              Container(
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
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              SizedBox(
                height: height / 6,
              ),
              Container(
                child: Stack(
                  overflow: Overflow.visible,
                  children: [
                    Image.asset(
                      'Images/map.png',
                      height: height / 5,
                    ),
                    Container(
                      child: CustomPaint(
                        painter: CirclePainter(),
                      ),
                    ),
                    Positioned(
                      child: Container(
                        height: 90,
                        width: 130,
                        decoration: BoxDecoration(
                            color: Colors.deepPurple, shape: BoxShape.circle),
                        child: Center(
                          child: Text("Library",
                              style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              )),
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
                            color: Colors.deepPurple, shape: BoxShape.circle),
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
                            color: Colors.deepPurple, shape: BoxShape.circle),
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
                            color: Colors.deepPurple, shape: BoxShape.circle),
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
                            color: Colors.deepPurple, shape: BoxShape.circle),
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
                            color: Colors.deepPurple, shape: BoxShape.circle),
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
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      color: Colors.deepPurple,
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
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      color: Colors.deepPurple,
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
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      color: Colors.deepPurple,
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
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      color: Colors.deepPurple,
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
      ..color = Colors.deepPurple
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
