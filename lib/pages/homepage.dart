
import 'package:flutter/material.dart';
import 'package:insurance_travel_app/pages/about.dart';
import 'package:insurance_travel_app/pages/benefits.dart';
import 'package:insurance_travel_app/pages/packagesUI.dart';
import 'package:insurance_travel_app/pages/loading.dart';
import 'package:insurance_travel_app/pages/addPackage.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer: Drawer(

        width:200,
        backgroundColor: Colors.teal[100],
        child: ListView(
          padding: EdgeInsets.zero,
          children:  [
            DrawerHeader(
              margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
              decoration: BoxDecoration(
                color: Colors.deepPurple[100],

              ),

              child: const Text('MENU'),

            ),
            ListTile(
              title: const Text('INSURANCE PACKAGES'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const PackagePage() ));
              },
            ),
            ListTile(
              title: const Text('PACKAGE BENEFITS'),
              onTap: ()
              //{Navigator.pushNamed(context,'/benefit');},
              {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const BenefitPage() ));
              }
            ),
            ListTile(
              title: const Text('ABOUT'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const AboutPage() ));
              },
            )
          ],
        ),
      )
      ,appBar: AppBar(
      title: const Text(
        'TRAVEL INSURANCE APP',

      ),
      centerTitle: true,
      backgroundColor: Colors.teal[400],
    ),
      // body: ,
    );
  }
}
