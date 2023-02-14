import 'package:insurance_travel_app/model.dart';

class BaseClass {
  List<Benefits> benefit = <Benefits>[];
  List<Packages> package =<Packages>[];




  void addBenefit(String value){
    benefit.add(value as Benefits);
  }
   void removeBenefit(int value){
    int j = value;
    benefit.removeAt(j);
  }
  void editBenefit(int value){

  }
}