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
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/shalika.jpg'),
                radius: 45.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            Text(
               'NAME',
              style: TextStyle(
                color: Colors.blue[900],
                letterSpacing: 2.0,
                fontSize: 21.0,
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
              'CURRENT LEVEL',
              style: TextStyle(
                color: Colors.blue[900],
                letterSpacing: 2.0,
                fontSize: 21.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '10',
              style: TextStyle(
                color: Colors.red[600],
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.blue[900],
                ),
                SizedBox(width: 10.0),
                Text(
                    'shalikaupamada@gmail.com',
                    style: TextStyle(
                      color: Colors.red[600],
                      fontSize: 20.0,
                      letterSpacing: 1.0,
                    )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

