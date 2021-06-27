import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:task_flutter/Views/HomeScreen.dart';
class dictionary extends StatefulWidget {
  @override
  _dictionaryState createState() => _dictionaryState();
}

class _dictionaryState extends State<dictionary> {
  String _url = "https://owlbot.info/api/v4/dictionary/";
  String _token = "332f76aed7b657c6c671de72a99ab683dc233f24";

  TextEditingController _controller = TextEditingController();

  StreamController _streamController;
  Stream _stream;

  Timer _debounce;

  _search() async {
    if (_controller.text == null || _controller.text.length == 0) {
      _streamController.add(null);
      return;
    }
     String controller=_controller.text.trim();
    _streamController.add("waiting");
    Response response = await get(Uri.parse(_url+controller), headers: {"Authorization": "Token " + _token});
    _streamController.add(json.decode(response.body));
  }

  @override
  void initState() {
    super.initState();

    _streamController = StreamController();
    _stream = _streamController.stream;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:  Scaffold(
    appBar: AppBar(
      backgroundColor: Color(0xff6C63FE),
      leading: IconButton(
        onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>Home_screen()));
        },
        icon: Icon(
        Icons.arrow_back_ios,
        color: Colors.white,size: 30,
      ),),
    centerTitle: true,
    title: Text("Dictionary"),
    bottom: PreferredSize(
    preferredSize: Size.fromHeight(48.0),
    child: Row(
    children: <Widget>[
    Expanded(
    child: Container(
    margin: const EdgeInsets.only(left: 12.0, bottom: 8.0),
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(24.0),
    ),
    child: TextFormField(
    onChanged: (String text) {
    if (_debounce?.isActive ?? false) _debounce.cancel();
    _debounce = Timer(const Duration(milliseconds: 1000), () {
    _search();
    });
    },
    controller: _controller,
    decoration: InputDecoration(
    hintText: "Search for a word",
    contentPadding: const EdgeInsets.only(left: 24.0),
    border: InputBorder.none,
    ),
    ),
    ),
    ),
    IconButton(
    icon: Icon(
    Icons.search,
    color: Colors.white,
    ),
    onPressed: () {
    _search();
    },
    )
    ],
    ),
    ),
    ),
    body: Container(
    margin: const EdgeInsets.all(8.0),
    child: StreamBuilder(
    stream: _stream,
    builder: (BuildContext ctx, AsyncSnapshot snapshot) {
    if (snapshot.data == null) {
    return Center(
    child: Text("Enter a search word"),
    );
    }

    if (snapshot.data == "waiting") {
    return Center(
    child: CircularProgressIndicator(),
    );
    }

    return ListView.builder(
    itemCount: snapshot.data["definitions"].length,
    itemBuilder: (BuildContext context, int index) {
    return ListBody(
    children: <Widget>[
    Container(
    color: Colors.grey[300],
    child: ListTile(
    leading: snapshot.data["definitions"][index]["image_url"] == null
    ? null
        : CircleAvatar(
    backgroundImage: NetworkImage(snapshot.data["definitions"][index]["image_url"]),
    ),
    title: Text(_controller.text.trim() + "(" + snapshot.data["definitions"][index]["type"] + ")"),
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(snapshot.data["definitions"][index]["definition"]),
    )
    ],
    );
    },
    );
    },
    ),
    ),
    ));
  }
}
