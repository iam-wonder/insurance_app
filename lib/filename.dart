import 'package:drift/drift.dart';
import 'dart:io';

import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'filename.g.dart';

class Package extends Table{
  IntColumn get id => integer().autoIncrement().nullable()();
  TextColumn get name => text()();
  TextColumn get description => text().named('body')();

}
class Benefit extends Table{
  IntColumn get id => integer().autoIncrement().nullable()();
  TextColumn get name=> text()();
}
class  Package_Benefit extends Table{
  IntColumn get id => integer().autoIncrement()();
  IntColumn get packageId => integer()
      .nullable()
      .customConstraint('REFERENCES package(id)')();
  IntColumn get benefitId => integer().nullable()
      .customConstraint('REFERENCES benefit(id)')();
}
@DriftDatabase(tables:[Package, Benefit , Package_Benefit])
class MyDatabase extends _$MyDatabase{
    MyDatabase():super(_openConnection());
    @override
    int get schemaVersion => 1;
//-------------------------------------------------------------------------
    Future<List<PackageData>> get getAllPackages =>  select(package).get();
    Stream<List<PackageData>> get watchAllPackages =>  select(package).watch();
    Future<List<BenefitData>> get getAllBenefits => select(benefit).get();
    Stream<List<BenefitData>> get watchAllBenefits => select(benefit).watch();
//=========================================================================
    Future insertPackages(PackageData packages)=> into(package).insert(packages);
    Future insertBenefits(BenefitData benefits)=>into(benefit).insert(benefits);
    Future insertPB(Package_BenefitData pb)=>into(packageBenefit).insert(pb);
    //============================================================================
      Future updatePackages(PackageData packages)=> update(package).replace(packages);
      Future updateBenefits(BenefitData benefits)=>update(benefit).replace(benefits);
      Future updatePB(Package_BenefitData pb)=>update(packageBenefit).replace(pb);
//===============================================================================
  Future deletePackages(PackageData packages)=> delete(package).delete(packages);
  Future deleteBenefits(BenefitData benefits)=>delete(benefit).delete(benefits);
  Future deletePB(Package_BenefitData pb)=>delete(packageBenefit).delete(pb);
//============================================================================


}
LazyDatabase _openConnection(){
  return LazyDatabase(() async{
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path,'db.sqlite'));
    return NativeDatabase.createInBackground(file);
  }
  );
}