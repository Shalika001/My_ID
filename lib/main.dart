import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: MyCard(),
));

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: Text('My Id Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[700],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
               'NAME',
              style: TextStyle(
                color: Colors.blue[900],
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Shalika',
              style: TextStyle(
                color: Colors.red[600],
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40.0),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.blue[900],
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Shalika',
              style: TextStyle(
                color: Colors.red[600],
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),SizedBox(height: 40.0),
          ],
        ),
      ),
    );
  }
}

