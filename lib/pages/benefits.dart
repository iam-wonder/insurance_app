
import 'package:flutter/material.dart';
//import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:insurance_travel_app/base.dart';
import 'package:provider/provider.dart';
import 'package:insurance_travel_app/filename.dart';
import 'package:insurance_travel_app/pages/addBenefit.dart';

class BenefitPage extends StatefulWidget {
  const BenefitPage({Key? key}) : super(key: key);

  @override
  State<BenefitPage> createState() => _BenefitPageState();
}

class _BenefitPageState extends State<BenefitPage> {
  int count = 0 ;
  BaseClass temp = BaseClass();

  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('BENEFITS'),
        centerTitle: true,
          ),
      body:  Column(
        children: <Widget>[
          Expanded(child: _buildBenefitList(context))
        ]
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> AddBenefit() ));

        },
        backgroundColor: Colors.lightBlue[200],
        child: const Icon(
            Icons.add_task
        ),
      ),
    );
  }
}
Widget _buildListItem(BenefitData benefitData,MyDatabase database){
    return ListTile(
          leading: const Icon(
            Icons.travel_explore,
          ),
          title: Text(benefitData.name),
          trailing: IconButton(
             onPressed: (){
               database.deleteBenefits(benefitData);

             } ,
            icon: const Icon(
              Icons.delete
            ),
          ),
        );
}
StreamBuilder<List<BenefitData>> _buildBenefitList(BuildContext context){
  final database = Provider.of<MyDatabase>(context);
  return StreamBuilder(
    stream: database.watchAllBenefits,
    builder: (context,AsyncSnapshot<List<BenefitData>> snapshot){
      final benefits = snapshot.data ?? [];
      return ListView.builder(
          itemCount: benefits.length,
          itemBuilder: (_,index){
            final itemBenefit = benefits[index];
            return _buildListItem(itemBenefit, database);
          });
    },
  );
}