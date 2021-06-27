import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_flutter/Views/AudioBooks.dart';
import 'package:task_flutter/Views/EBook.dart';
import 'package:task_flutter/Views/HomeScreen.dart';
import 'package:task_flutter/Views/Library_books.dart';
import 'package:task_flutter/Views/qustion_bank_view.dart';
import 'package:widget_spinner/widget_spinner.dart';

import 'Library_books_topic.dart';
import 'OnlienExam.dart';
import 'Qusbnk_qustions.dart';
import 'academicNote.dart';
class rough extends StatefulWidget {
  @override
  _roughState createState() => _roughState();
}

class _roughState extends State<rough> {
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        elevation: 10.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>Home_screen()));
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xff6C63FE),
          ),
        ),


      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height/20,),
             GestureDetector(
          onTap: (){
            print('tapped');
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>Library_books()));
          },
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
             SizedBox(height: 10,),
             GestureDetector(
          onTap: (){
            print('tapped');
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>Ebooks()));
          },
          child: Container(
            height: 100,
            width: 130,
            decoration: BoxDecoration(
                color: Color(0xff6C63FE), shape: BoxShape.circle),
            child: Center(
              child: Text("Ebook",
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  )),
            ),
          ),
        ),SizedBox(height: 10,),
             GestureDetector(
          onTap: (){
            print('tapped');
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>qustionBnk()));
          },
          child: Container(
            height: 100,
            width: 130,
            decoration: BoxDecoration(
                color: Color(0xff6C63FE), shape: BoxShape.circle),
            child: Center(
              child: Text("Qusbank",
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  )),
            ),
          ),
        ),SizedBox(height: 10,),
             GestureDetector(
          onTap: (){
            print('tapped');
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>Audio_books()));
          },
          child: Container(
            height: 100,
            width: 130,
            decoration: BoxDecoration(
                color: Color(0xff6C63FE), shape: BoxShape.circle),
            child: Center(
              child: Text("Audio Books",
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  )),
            ),
          ),
        ),SizedBox(height: 10,),
             GestureDetector(
          onTap: (){
            print('tapped');
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>onlineExam()));
          },
          child: Container(
            height: 100,
            width: 130,
            decoration: BoxDecoration(
                color: Color(0xff6C63FE), shape: BoxShape.circle),
            child: Center(
              child: Text("Online Exam",
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  )),
            ),
          ),
        ),SizedBox(height: 10,),
             GestureDetector(
          onTap: (){
            print('tapped');
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>Academic_Note()));
          },
          child: Container(
            height: 100,
            width: 130,
            decoration: BoxDecoration(
                color: Color(0xff6C63FE), shape: BoxShape.circle),
            child: Center(
              child: Text("Academic Notes",
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  )),
            ),
          ),
        ),


          ],
        ),
      )
    ));
  }
}
