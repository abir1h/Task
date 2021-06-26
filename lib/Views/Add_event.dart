import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_flutter/Views/Calender.dart';
class add_event extends StatefulWidget {
  String date;
  add_event({this.date});
  @override
  _add_eventState createState() => _add_eventState();
}

class _add_eventState extends State<add_event> {
  TextEditingController event=new TextEditingController();
  bool isSelected=false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
     appBar: AppBar(
        elevation: 10.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>calender()));
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xff6C63FE),
          ),
        ),
        title: Text("Reminder",
            style: GoogleFonts.lato(
              color: Color(0xff6C63FE),
              fontSize: 26,
              fontWeight: FontWeight.w900,
            )),
       actions: [
         Padding(
           padding: const EdgeInsets.all(10.0),
           child: ElevatedButton(

               onPressed: (){}, child: Text('Save')

           ),
         )
       ],

      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          TextFormField(
            controller: event,
            decoration: new InputDecoration(
              hintText: 'Remind me to...',
              labelStyle:  GoogleFonts.lato(
                color: Colors.indigo,
                fontSize: 26,
                fontWeight: FontWeight.w700,
              ),
              fillColor: Colors.white,
              contentPadding: new EdgeInsets.symmetric(vertical: 25.0, horizontal: 10.0),
              border: new OutlineInputBorder(
                borderRadius: new BorderRadius.circular(25.0),
                borderSide: new BorderSide(

                    color: Colors.indigo
                ),
              ),
              //fillColor: Colors.green
            ),
            onChanged: (val) {
              validator:
                  (val) => val.isEmpty ? 'Can not be emplty' : null;
              setState(() => event.text = val);
            },


          ),
          ListTile(
            leading: Icon(Icons.access_time),
            title: Text("All day",style: TextStyle(color: Colors.black),),
            trailing: ToggleButtons(children: [
              Icon(Icons.toggle_off,color: Colors.blue,),
            ],
              isSelected: [
                isSelected
              ]

              ,),
          ),
          Center(child: Text(widget.date,style: TextStyle(color: Colors.black,fontSize: 18),))
        ],

      ),


    ));
  }
}
