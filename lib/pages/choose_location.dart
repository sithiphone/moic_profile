import 'package:flutter/material.dart';
class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 1;

  void getData() async{
    await Future.delayed(Duration(seconds: 5), (){
      print("Sithiphone");
    });

    Future.delayed(Duration(seconds: 3), (){
      print("statement");
    });
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
                counter++;
              });
            },
            child: Text("Counter: $counter"),
          )
      ),),
    );
  }
}
