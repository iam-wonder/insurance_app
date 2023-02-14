
import 'package:flutter/cupertino.dart';

class Packages
{
    int id;
    String name;
    String description;


    Packages( {required this.id, required this.name, required this.description});
    Map<String, dynamic> toMap(){
        return {
          'id':id,
          'name':name,
          'description':description,
        };
    }
    @override
    String toString (){
        return 'Packages{ id: $id, name:$name, description: $description}';
    }

}
class Benefits
{

    String _name;

    Benefits(this._name);

    //int get id => _id;
    String get name=>_name;

    set name(String value){
        if (value.length >= 3) {
            _name=value;
        }
    }
   /*
    Map<String, dynamic> bToMap(){
        var map = Map<String , dynamic>();
        if (id != null) {
            map['id']=_id;
        }
        map['name'] = _name;
        return map;
    }*/
}

class Package_Benefit{
    int id;
    int package_id;
    int benefit_id;

    Package_Benefit(this.id,this.benefit_id,this.package_id);

}