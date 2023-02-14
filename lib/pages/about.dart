

import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: const Text('ABOUT'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body:  Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:   <Widget>[
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/wonder.jpg'),
                radius: 60.0,


              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            const Text(
              'CREATED BY',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,


              ),
            ),
            const SizedBox(height:10.0 ,),
            Text(
              'FRANCIS MUBANGA',
              style: TextStyle(
                  color: Colors.grey[400],
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic



              ),
            ),
            const SizedBox(height: 30,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                const SizedBox(width: 10.0,),
                Text(
                  'francis_mubanga@yahoo.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                  ),
                )
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              children: <Widget> [
                Icon(
                  Icons.phonelink_ring,
                  color: Colors.teal[200],
                ),
                const SizedBox(width: 10,),

                Text(
                  '+260 978221992',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
