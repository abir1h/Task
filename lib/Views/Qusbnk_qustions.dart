import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_flutter/models/qustion_bankPdf&notes.dart';

import 'Rough.dart';
class qustionbank_qustions extends StatefulWidget {
  @override
  _qustionbank_qustionsState createState() => _qustionbank_qustionsState();
}

class _qustionbank_qustionsState extends State<qustionbank_qustions> {
  List<topic_> topics = List<topic_>();

  var _listGenderText = ["Images/Pdf.png", "Images/image.png"];
  var _listGenderEmpty = ["", ""];
  var _tabTextIndexSelected = 0;
  var _tabTextIconIndexSelected = 0;
  var _tabIconIndexSelected = 0;
  var _tabSelectedIndexSelected = 0;
  // you can change selected with update this
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    topics=gettitle();
  }

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context). size.height;
    return SafeArea(child: Scaffold(
      appBar: AppBar(
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
        title: Text("Class Books",
            style: GoogleFonts.lato(
              color: Color(0xff6C63FE),
              fontSize: 26,
              fontWeight: FontWeight.w900,
            )),

      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: height/15,),
              FlutterToggleTab(
                width: 50,
                borderRadius: 15,
                initialIndex: 0,
                selectedTextStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
                unSelectedTextStyle: TextStyle(
                    color: Colors.blue,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
                labels: ["PDF","Image"],

                selectedLabelIndex: (index) {
                  setState(() {
                    _tabTextIconIndexSelected = index;
                  });
                },
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Selected sex : ${_listGenderText[_tabTextIconIndexSelected]} ",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left:20.0),
                child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        childAspectRatio: 6 / 3,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10),
                    itemCount: topics.length,
                    itemBuilder: (BuildContext ctx, index) {
                      String indexxdata=_listGenderText[_tabTextIconIndexSelected];
                      return tile(topicname: topics[index].Topic_name,indexdata: indexxdata,);
                    }),
              ),

            ],

          ),
        ),
      ),
    ));
  }
}
class tile extends StatelessWidget {
  final  topicname,indexdata;
  tile({ this.topicname,this.indexdata});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("tapped on container");

      },
      child: Container(

        child: Column(
          children: [
            Image.asset(indexdata,height: 50,width: 50,),
            Text(
              topicname,
              style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.w900,fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}