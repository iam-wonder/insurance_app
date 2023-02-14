import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:insurance_travel_app/pages/about.dart';
import 'package:insurance_travel_app/pages/benefits.dart';
import 'package:insurance_travel_app/pages/packagesUI.dart';
import 'package:insurance_travel_app/pages/loading.dart';
import 'package:insurance_travel_app/pages/addPackage.dart';
import 'package:insurance_travel_app/pages/addBenefit.dart';
import 'package:insurance_travel_app/pages/homepage.dart';
import 'package:insurance_travel_app/filename.dart';



Future<void> main() async{
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/': (context)=>const LoadingPage(),
      '/home':(context)=>const MyApp(),
      '/packages':(context)=>const PackagePage(),
      '/packages/addpackage':(context)=> const AddPackage(),
      '/about':(context)=>const AboutPage(),
      '/benefit':(context)=>const BenefitPage(),
      '/benefit/addbenefit': (context) => AddBenefit(),
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
          create: (_) => MyDatabase(),

      child:   MaterialApp(
        title: 'MaterialApp',
        home: Home(),


      ),
    );
  }
}

