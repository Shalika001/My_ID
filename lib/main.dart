import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: MyCard(),
));

class MyCard extends StatefulWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {

  int currentLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: const Text('My Id Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[700],
        elevation: 0.0,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            currentLevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
      ),

      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
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
                fontSize: 15.0,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              'Shalika',
              style: TextStyle(
                color: Colors.red[600],
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40.0),
            Text(
              'CURRENT LEVEL',
              style: TextStyle(
                color: Colors.blue[900],
                letterSpacing: 2.0,
                fontSize: 15.0,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              '$currentLevel',
              style: TextStyle(
                color: Colors.red[600],
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.blue[900],
                ),
                const SizedBox(width: 10.0),
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


