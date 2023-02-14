
import 'package:flutter/material.dart';
import 'package:insurance_travel_app/filename.dart';
import 'package:provider/provider.dart';


class AddBenefit extends StatefulWidget {
   AddBenefit({Key? key}) : super(key: key);

  @override
  State<AddBenefit> createState() => _AddBenefitState();
}

class _AddBenefitState extends State<AddBenefit> {
  final benefitNameContoller = TextEditingController();
  String result='';
  void _getResult(){
    result = benefitNameContoller.value.text;
  }

  @override
  void dispose(){
    benefitNameContoller.dispose();
    super.dispose();
  }
  @override
  void initState(){
    super.initState();
    benefitNameContoller.addListener(_getResult);
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: const Text('ADD A BENEFIT'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: TextField(
                controller: benefitNameContoller,
                style: const TextStyle(
                ),
                onChanged: (value) {},

                decoration: InputDecoration(
                    labelText: 'Title',
                    labelStyle: const TextStyle(),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)
                    )
                ),

              ),
            ),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: Row(
                children: [
                  Expanded(child: ElevatedButton(
                    onPressed: () {
                          final database = Provider.of<MyDatabase>(context,listen: false);
                          var benefit = BenefitData(
                            name: result
                          );
                          database.insertBenefits(benefit);
                          Text(result);
                          Navigator.pop(context);
                    },
                    child: const Text(
                      'Save',
                      textScaleFactor: 1.5,
                    ),
                  )),
                  const SizedBox(width: 30.0,),
                  Expanded(child: ElevatedButton(

                    onPressed: () {
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

      ),
    );
  }
}
