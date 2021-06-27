import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_flutter/models/QustientBank.dart';

import 'Qusbnk_qustions.dart';
import 'Rough.dart';
class Academic_Note extends StatefulWidget {
  @override
  _Academic_NoteState createState() => _Academic_NoteState();
}

class _Academic_NoteState extends State<Academic_Note> {
  List<topic_> topics = List<topic_>();
  void initState() {
    // TODO: implement initState
    super.initState();
    topics=getQustionbankSubjects();
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
                return qus_tile(topicname: topics[index].Topic_name,);
              }),
        ),
      ),
    ));
  }
}
class qus_tile extends StatelessWidget {
  final  topicname;
  qus_tile({ this.topicname});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("tapped on container");
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>qustionbank_qustions()));

      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),

        child: Container(
          alignment: Alignment.center,

          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Color(0xff6C63FE)),
          child: Center(
            child: Text(
              topicname,
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}