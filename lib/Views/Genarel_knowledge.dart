import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'HomeScreen.dart';
import 'package:task_flutter/models/GeneralKnowledge.dart';
import 'topic_qus.dart';
class General_knowledge_screen extends StatefulWidget {
  @override
  _General_knowledge_screenState createState() => _General_knowledge_screenState();
}

class _General_knowledge_screenState extends State<General_knowledge_screen> {
  List<general_knowledge> topics = List<general_knowledge>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    topics = getTopic();

  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 8;
    final double itemWidth = size.width / 3;
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
        title: Text("General Knowledge",
            style: GoogleFonts.lato(
              color: Color(0xff6C63FE),
              fontSize: 26,
              fontWeight: FontWeight.w900,
            )),

      ),
      body: SingleChildScrollView(
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
                return topictile(topicname: topics[index].Topic_name);
              }),
        ),
      )
    ));
  }
}

class topictile extends StatelessWidget {
  final  topicname;
  topictile({ this.topicname});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        print('tapped');
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_){
          return qustions();
        }));
      },
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(

          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Container(

          alignment: Alignment.center,
          height: 30,
          width: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Color(0xff6C63FE)),
          child: Text(
            topicname,
            style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 26),
          ),
        )
      ),
    );
  }
}