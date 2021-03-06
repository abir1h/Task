import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_flutter/Views/HomeScreen.dart';
import 'package:task_flutter/Views/Rough.dart';
import 'package:task_flutter/models/topic_data.dart';

import 'Library_books_topic.dart';
class Library_books extends StatefulWidget {
  @override
  _Library_booksState createState() => _Library_booksState();
}

class _Library_booksState extends State<Library_books> {
  List<topic_> topics = List<topic_>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    topics=getLibraryTopic();
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
                return Library_topictile(topicname: topics[index].Topic_name,);
              }),
        ),
      ),
    ));
  }
}
class Library_topictile extends StatelessWidget {
  final  topicname;
  Library_topictile({ this.topicname});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        print('tapped');
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_){
         return Topic_books();
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