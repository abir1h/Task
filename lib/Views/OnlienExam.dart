import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_flutter/Views/onlineExam_qus.dart';
import 'package:task_flutter/models/Board_books_model.dart';

import 'Rough.dart';
class onlineExam extends StatefulWidget {
  @override
  _onlineExamState createState() => _onlineExamState();
}

class _onlineExamState extends State<onlineExam> {
  List<topic_> topics = List<topic_>();
  void initState() {
    // TODO: implement initState
    super.initState();
    topics=getBoard_Books();
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 8;
    final double itemWidth = size.width / 3;
    return SafeArea(child: Scaffold(
      appBar:  AppBar(
        elevation: 10.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>rough()));
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.deepPurple,
          ),
        ),
        title: Text("Subjects",
            style: GoogleFonts.lato(
              color: Color(0xff6C63FE),
              fontSize: 26,
              fontWeight: FontWeight.w900,
            )),

      ),
      body:  SingleChildScrollView(
        child:Padding(
          padding: const EdgeInsets.all(15.0),
          child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 4 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemCount: topics.length,
              itemBuilder: (BuildContext ctx, index) {
                return ebooks_tile(topicname: topics[index].Topic_name,imag:topics[index].Image ,);
              }),
        ),
      ),
    ));
  }
}
class ebooks_tile extends StatelessWidget {
  final  topicname,imag;
  ebooks_tile({ this.topicname,this.imag});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("tapped on container");
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>Online_qustions()));

      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),

        child: Stack(
          children: [
            ClipRect(
                child: Image.asset(
                  imag,
                  width: 220,
                  height: 100,

                  fit: BoxFit.cover,
                )),
            Container(
              alignment: Alignment.center,

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: Color(0x5f6C63FE)),
              child: Text(
                topicname,
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 30),
              ),
            )
          ],
        ),
      ),
    );
  }
}