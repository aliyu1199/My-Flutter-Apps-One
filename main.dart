import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(
  home: NinjaCard(),
));
class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      appBar: AppBar(
        title: Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            ninjaLevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.amberAccent,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/avatar.png'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 90.0,
            ),
            Text(
              'NAME',
              style: TextStyle(
                letterSpacing: 2.0, 
                color: Colors.grey),
            ),
            SizedBox(height: 6.0),
            Text(
              'Aliyu Jimoh',
              style: TextStyle(
                letterSpacing: 2.0, 
                color: Colors.white,
                fontSize: 23.0,
                fontWeight: FontWeight.bold
                ),
            ),
            SizedBox(height: 30.0),
            Text(
              'CURRENT COMPLETED LEVEL',
              style: TextStyle(
                letterSpacing: 2.0, 
                color: Colors.grey),
            ),
            SizedBox(height: 6.0),
            Text(
              '$ninjaLevel',
              style: TextStyle(
                letterSpacing: 2.0, 
                color: Colors.white,
                fontSize: 23.0,
                fontWeight: FontWeight.bold
                ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                SizedBox(height: 6.0),
                SizedBox(width: 10.0),
                Text(
                  'aliyujimoh58@gmail.com',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
              
                  ),
                ),
              ],
            ),
          ]
        ),
        ), 
    );
  }
}