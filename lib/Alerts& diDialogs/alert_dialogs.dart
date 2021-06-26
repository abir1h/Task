import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class alert_dialogs extends StatefulWidget {
  @override
  _alert_dialogsState createState() => _alert_dialogsState();
}

class _alert_dialogsState extends State<alert_dialogs> {
  String Role_of_user = '';

  var Selected_Class;

  List<String> Class = <String>['Class 1', 'Class 2','Class 3'];
  List<String> Group = <String>['Group 1', 'Group 2','Group 3'];

  @override
  Widget build(BuildContext context) {

    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16)
      ),
      elevation: 0,
      backgroundColor: Colors.deepPurple,
      child: _buildChild(context),
    );
  }

  _buildChild(BuildContext context) => Container(


    height: 350,
    decoration: BoxDecoration(
        color: Color(0xff6C63FE),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(12))
    ),
    child: Column(
      children: <Widget>[
        SizedBox(height:30,),
        Text('Select Class',style: TextStyle(fontWeight:FontWeight.w900,color: Colors.white,fontSize: 30),),
        SizedBox(height:30,),

        Container(
          width: 200,
       decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
      color: Colors.white,
      border: Border.all()),

          child: Center(
            child: DropdownButton(
              iconSize: 60,
              items: Class.map((value) => DropdownMenuItem(
                child: Text(
                  value,
                  style: TextStyle(color: Color(0xff6C63FE),fontWeight: FontWeight.w900,fontSize: 30),
                ),
                value: value,
              )).toList(),
              onChanged: (
                  Selected_Role_type,
                  ) {
                print('$Selected_Role_type');
                setState(() {
                  Selected_Class = Selected_Role_type;

                });
              },
              value: Selected_Class,
              isExpanded: false,
              hint:Text('Class',style: TextStyle(color: Color(0xff6C63FE),fontWeight: FontWeight.w900,fontSize: 30)),
            ),
          ),
        ),
        SizedBox(height: 24,),Container(
          width: 200,
       decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
      color: Colors.white,
      border: Border.all()),

          child: Center(
            child: DropdownButton(
              iconSize: 60,
              items: Group.map((value) => DropdownMenuItem(
                child: Text(
                  value,
                  style: TextStyle(color: Color(0xff6C63FE),fontWeight: FontWeight.w900,fontSize: 30),
                ),
                value: value,
              )).toList(),
              onChanged: (
                  Selected_Role_type,
                  ) {
                print('$Selected_Role_type');
                setState(() {
                  Selected_Class = Selected_Role_type;

                });
              },
              value: Selected_Class,
              isExpanded: false,
              hint:Text('Group',style: TextStyle(color: Color(0xff6C63FE),fontWeight: FontWeight.w900,fontSize: 30)),
            ),

          ),
        ),
        SizedBox(height: 24,),
        SizedBox(width: 8,),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 2,

              primary: Colors.deepPurple,
              onPrimary: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35.0),
              ),
            ),
          onPressed: (){

          return Navigator.of(context).pop();
        }, child: Text('Done',style: TextStyle(color: Colors.white),),)
      ],
    ),
  );
}