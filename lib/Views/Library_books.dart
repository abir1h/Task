import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_flutter/Views/HomeScreen.dart';
class Library_books extends StatefulWidget {
  @override
  _Library_booksState createState() => _Library_booksState();
}

class _Library_booksState extends State<Library_books> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
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
        title: Text("Library",
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
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>Home_screen()));
              })
        ],
      ),
    ));
  }
}
