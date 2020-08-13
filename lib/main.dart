import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: TomProfile(),
));

class TomProfile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Tom profile', style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 10.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/tomcat.jpg'),
                radius: 60.0,
              ),
            ),
            Text('Name', style: TextStyle(color: Colors.grey, letterSpacing: 2.0),),
            SizedBox(height: 10.0,),
            Text('Sithiphone', style: TextStyle(
              color: Colors.amberAccent[200],
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 20.0,),
            Text('CURRENT LEVEL', style: TextStyle(color: Colors.grey, letterSpacing: 2.0),),
            SizedBox(height: 10.0,),
            Text('8', style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 30.0,),
            Text('Email', style: TextStyle(color: Colors.grey, letterSpacing: 2.0)),
            Row(
              children: [
                Icon(Icons.mail_outline, color: Colors.grey,),
                Text('sithiphone@fe-nuol.edu.la', style: TextStyle(color: Colors.grey),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}