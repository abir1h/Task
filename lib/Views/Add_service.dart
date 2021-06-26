import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_flutter/Views/HomeScreen.dart';
class add_service extends StatefulWidget {
  @override
  _add_serviceState createState() => _add_serviceState();
}

class _add_serviceState extends State<add_service> {
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
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
        title: Text("Tools",
            style: GoogleFonts.lato(
              color: Color(0xff6C63FE),
              fontSize: 26,
              fontWeight: FontWeight.w900,
            )),


      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height/18,),
            Center(child: Text('Add/Remove Services',style: TextStyle( color: Color(0xff6C63FE),fontSize: 24,fontWeight: FontWeight.w800),))
           ,ListTile(
             title: Text('Library',style: TextStyle( color: Color(0xff6C63FE),fontSize: 24,fontWeight: FontWeight.w800)),
              trailing: IconButton(icon: Icon(Icons.add,color: Color(0xff6C63FE),size: 40,), onPressed: (){}),
           ),ListTile(
             title: Text('Ebook',style: TextStyle( color: Color(0xff6C63FE),fontSize: 24,fontWeight: FontWeight.w800)),
              trailing: IconButton(icon: Icon(Icons.add,color: Color(0xff6C63FE),size: 40,), onPressed: (){}),
           ),ListTile(
             title: Text('Question Bank',style: TextStyle( color: Color(0xff6C63FE),fontSize: 24,fontWeight: FontWeight.w800)),
              trailing: IconButton(icon: Icon(Icons.add,color: Color(0xff6C63FE),size: 40,), onPressed: (){}),
           ),ListTile(
             title: Text('Audio Book',style: TextStyle( color: Color(0xff6C63FE),fontSize: 24,fontWeight: FontWeight.w800)),
              trailing: IconButton(icon: Icon(Icons.add,color: Color(0xff6C63FE),size: 40,), onPressed: (){}),
           ),ListTile(
             title: Text('Online Exam',style: TextStyle( color: Color(0xff6C63FE),fontSize: 24,fontWeight: FontWeight.w800)),
              trailing: IconButton(icon: Icon(Icons.add,color: Color(0xff6C63FE),size: 40,), onPressed: (){}),
           ),ListTile(
             title: Text('Academic Note',style: TextStyle( color: Color(0xff6C63FE),fontSize: 24,fontWeight: FontWeight.w800)),
              trailing: IconButton(icon: Icon(Icons.add,color: Color(0xff6C63FE),size: 40,), onPressed: (){}),
           ),ListTile(
             title: Text('Academic Video',style: TextStyle( color: Color(0xff6C63FE),fontSize: 24,fontWeight: FontWeight.w800)),
              trailing: IconButton(icon: Icon(Icons.add,color: Color(0xff6C63FE),size: 40,), onPressed: (){}),
           ),ListTile(
             title: Text('Online Class',style: TextStyle( color: Color(0xff6C63FE),fontSize: 24,fontWeight: FontWeight.w800)),
              trailing: IconButton(icon: Icon(Icons.add,color: Color(0xff6C63FE),size: 40,), onPressed: (){}),
           ),
          ],
        ),
      ),
    ));
  }
}
