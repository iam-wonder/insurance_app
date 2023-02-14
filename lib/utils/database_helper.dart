/*
import 'dart:async';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';


import 'package:insurance_travel_app/model.dart';*/

/*
class DBClass{
  static Database database;

  static Future<Database> initDatabase() async {
      database= await openDatabase(
        join(await getDatabasesPath(),'hero.db'),
        onCreate: (db, version){
          db.execute('CREATE TABLE package(id INTEGER PRIMARY KEY,name TEXT,description TEXT)'
          );
          db.execute('CREATE TABLE benefit(id INTEGER PRIMARY KEY,name TEXT)');
          db.execute('''
CREATE TABLE pb(id INTEGER PRIMARY KEY,p_id INTEGER, b_id INTEGER, FOREIGN KEY(p_id) 
REFERENCES package(id),FOREIGN KEY(b_id) REFERENCES benefit(id)''');
        },
        version: 1,
      );
      return database;
  }

}*/