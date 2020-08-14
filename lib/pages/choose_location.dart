import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  void getData() async {
    Response response = await get("https://jsonplaceholder.typicode.com/todos/1");
    Map data = jsonDecode(response.body);
    print(data['title']);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose location"),
        centerTitle: true,
        elevation: 10.0,
        backgroundColor: Colors.blue[900],
      ),
      body: SafeArea(child: Center(
          child: RaisedButton(
            onPressed: (){
              setState(() {
              });
            },
            child: Text("Counter: "),
          )
      ),),
    );
  }
}
