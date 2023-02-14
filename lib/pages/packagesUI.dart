import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insurance_travel_app/filename.dart';
import 'package:insurance_travel_app/pages/addPackage.dart';
import 'package:provider/provider.dart';

class PackagePage extends StatefulWidget {
  const PackagePage({Key? key}) : super(key: key);

  @override
  State<PackagePage> createState() => _PackagePageState();
}

class _PackagePageState extends State<PackagePage> {

 var temp = MyDatabase();
  Widget productTemplate(map)
  {
    return Card(
      child: Column(
        children: <Widget>[
          Text(
            map.name,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(
        title: const Text('PACKAGES'),
        centerTitle: true,

      ),
      body:
           Column(
             children: [
               Expanded(child: _buildPackageList(context)

       ),
             ],
           ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const AddPackage() ));

          },
          backgroundColor: Colors.lightBlue[200],
          child: const Icon(
              Icons.add_task
          ),
        )

          
     //   ],



      );
  }
  StreamBuilder<List<PackageData>> _buildPackageList(BuildContext context){
    final database = Provider.of<MyDatabase>(context);
    return StreamBuilder(
      stream: database.watchAllPackages,
      builder: (context,AsyncSnapshot<List<PackageData>> snapshot){
        final packages = snapshot.data ?? [];
        return ListView.builder(
            itemCount: packages.length,

            itemBuilder: (_,index){
              final itemPackage = packages[index];
              return _buildPListItem(itemPackage, database);
            });
      },
    );
  }
}

Widget _buildPListItem(PackageData packageData, MyDatabase database){

  return Card(
    elevation: 0.0,
    color: Colors.amber[200],
    child: Column(
      children: <Widget>[
        ListTile(
          title: Text(packageData.name,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          ),
          subtitle: Text(packageData.description),
          iconColor: Colors.orangeAccent[50],
          trailing: IconButton(
            icon: const Icon(
              Icons.delete_sweep
            ), 
            onPressed: () { 
              database.deletePackages(packageData);
            },
          ),
        ),
        const Divider(height: 50,),
      ],
    )
  );
}

StreamBuilder<List<PackageData>> _buildPackageList(BuildContext context){
  final database = Provider.of<MyDatabase>(context);
  return StreamBuilder(
    stream: database.watchAllPackages,
    builder: (context,AsyncSnapshot<List<PackageData>> snapshot){
      final packages = snapshot.data ?? [];
      return ListView.builder(
          itemCount: packages.length,

          itemBuilder: (_,index){
            final itemPackage = packages[index];
            return _buildPListItem(itemPackage, database);
          });
    },
  );
}

