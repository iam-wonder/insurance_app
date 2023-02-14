

import 'package:flutter/material.dart';
import 'package:insurance_travel_app/filename.dart';
import 'package:provider/provider.dart';

class AddPackage extends StatefulWidget {
  const AddPackage({Key? key}) : super(key: key);

  @override
  State<AddPackage> createState() => _AddPackageState();
}

class _AddPackageState extends State<AddPackage> {

  TextEditingController nameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  String result1='';
  String result2='';

  void _getResult1(){
    result1 = nameController.value.text;
  }
  void _getResult2(){
    result2 = descriptionController.value.text;
  }
  @override
  void dispose(){
    nameController.dispose();
    descriptionController.dispose();
    super.dispose();
  }
@override
void initState(){
    super.initState();
    nameController.addListener(_getResult1);
    descriptionController.addListener(_getResult2);
}
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('ADD A PACKAGE'),
        centerTitle: true,
      ),
      body: Padding(
            padding: const EdgeInsets.only(top: 15.0,left: 10.0,right: 10.0),
            child: ListView(
                children: <Widget>[
                  const SizedBox(height: 40,),
                     Padding(
                        padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                        child: TextField(
                          controller: nameController,
                          style: const TextStyle(
                          ),
                          onChanged: (value){},
                          decoration:  InputDecoration(
                            labelText: 'Title',
                            labelStyle: const TextStyle(),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)
                            )
                          ),

                          ) ,
                        ),
                  const SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                    child: TextField(
                      controller: descriptionController,
                      style: const TextStyle(
                      ),
                      onChanged: (value){},
                      decoration:  InputDecoration(
                          labelText: 'Description',
                          labelStyle: const TextStyle(),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)
                          )
                      ),

                    ) ,
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top:15.0, bottom: 15.0),
                      child: Row(
                          children: [
                            Expanded(child: ElevatedButton(
                              onPressed: (){
                                final database= Provider.of<MyDatabase>(context,listen: false);
                                var package =PackageData(
                                    name: result1, description: result2);
                                database.insertPackages(package);
                                Text(result2);
                                Text(result1);
                                Navigator.pop(context);
                              },
                              child: const Text(
                                'Save',
                                textScaleFactor: 1.5,
                              ),
                            )),
                            const SizedBox(width: 30.0,),
                            Expanded(child: ElevatedButton(

                              onPressed: (){
                                Navigator.pop(context);
                              },
                              child: const Text(
                                'Cancel',
                                textScaleFactor: 1.5,
                              ),
                            ))
                          ],
                      ),
                  )

                ],
            ),
      ) ,
    );
  }
}
