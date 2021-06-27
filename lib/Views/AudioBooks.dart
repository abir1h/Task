import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_flutter/models/Audibook_model.dart';


import 'Rough.dart';
class Audio_books extends StatefulWidget {
  @override
  _Audio_booksState createState() => _Audio_booksState();
}

class _Audio_booksState extends State<Audio_books> {
  List<topic_> topics = List<topic_>();
  void initState() {
    // TODO: implement initState
    super.initState();
    topics=get_audiBooks();
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
        title: Text("Class Books",
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
                return audio_book_tile(topicname: topics[index].Topic_name,imag:topics[index].Image ,);
              }),
        ),
      ),
    ));
  }
}
class audio_book_tile extends StatelessWidget {
  final  topicname,imag;
  audio_book_tile({ this.topicname,this.imag});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("tapped on container");

      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),

        child: Stack(
          children: [

            Column(
              children: [
              Image.asset(
              imag,
              width: 30,
              height: 30,

              fit: BoxFit.fill,
            ),
                SizedBox(height: 8,),
                Container(
                  alignment: Alignment.center,

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5), color: Color(0xff6C63FE)),
                  child: Text(
                    topicname,
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 30),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}