// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filename.dart';

// ignore_for_file: type=lint
class $PackageTable extends Package with TableInfo<$PackageTable, PackageData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PackageTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, true,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'body', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name, description];
  @override
  String get aliasedName => _alias ?? 'package';
  @override
  String get actualTableName => 'package';
  @override
  VerificationContext validateIntegrity(Insertable<PackageData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('body')) {
      context.handle(_descriptionMeta,
          description.isAcceptableOrUnknown(data['body']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PackageData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PackageData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}body'])!,
    );
  }

  @override
  $PackageTable createAlias(String alias) {
    return $PackageTable(attachedDatabase, alias);
  }
}

class PackageData extends DataClass implements Insertable<PackageData> {
  final int? id;
  final String name;
  final String description;
  const PackageData({this.id, required this.name, required this.description});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    map['name'] = Variable<String>(name);
    map['body'] = Variable<String>(description);
    return map;
  }

  PackageCompanion toCompanion(bool nullToAbsent) {
    return PackageCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: Value(name),
      description: Value(description),
    );
  }

  factory PackageData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PackageData(
      id: serializer.fromJson<int?>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String>(json['description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String>(description),
    };
  }

  PackageData copyWith(
          {Value<int?> id = const Value.absent(),
          String? name,
          String? description}) =>
      PackageData(
        id: id.present ? id.value : this.id,
        name: name ?? this.name,
        description: description ?? this.description,
      );
  @override
  String toString() {
    return (StringBuffer('PackageData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, description);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PackageData &&
          other.id == this.id &&
          other.name == this.name &&
          other.description == this.description);
}

class PackageCompanion extends UpdateCompanion<PackageData> {
  final Value<int?> id;
  final Value<String> name;
  final Value<String> description;
  const PackageCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
  });
  PackageCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String description,
  })  : name = Value(name),
        description = Value(description);
  static Insertable<PackageData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? description,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (description != null) 'body': description,
    });
  }

  PackageCompanion copyWith(
      {Value<int?>? id, Value<String>? name, Value<String>? description}) {
    return PackageCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['body'] = Variable<String>(description.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PackageCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }
}

class $BenefitTable extends Benefit with TableInfo<$BenefitTable, BenefitData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BenefitTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, true,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? 'benefit';
  @override
  String get actualTableName => 'benefit';
  @override
  VerificationContext validateIntegrity(Insertable<BenefitData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  BenefitData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BenefitData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
    );
  }

  @override
  $BenefitTable createAlias(String alias) {
    return $BenefitTable(attachedDatabase, alias);
  }
}

class BenefitData extends DataClass implements Insertable<BenefitData> {
  final int? id;
  final String name;
  const BenefitData({this.id, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    map['name'] = Variable<String>(name);
    return map;
  }

  BenefitCompanion toCompanion(bool nullToAbsent) {
    return BenefitCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: Value(name),
    );
  }

  factory BenefitData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BenefitData(
      id: serializer.fromJson<int?>(json['id']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'name': serializer.toJson<String>(name),
    };
  }

  BenefitData copyWith({Value<int?> id = const Value.absent(), String? name}) =>
      BenefitData(
        id: id.present ? id.value : this.id,
        name: name ?? this.name,
      );
  @override
  String toString() {
    return (StringBuffer('BenefitData(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BenefitData && other.id == this.id && other.name == this.name);
}

class BenefitCompanion extends UpdateCompanion<BenefitData> {
  final Value<int?> id;
  final Value<String> name;
  const BenefitCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  BenefitCompanion.insert({
    this.id = const Value.absent(),
    required String name,
  }) : name = Value(name);
  static Insertable<BenefitData> custom({
    Expression<int>? id,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
    });
  }

  BenefitCompanion copyWith({Value<int?>? id, Value<String>? name}) {
    return BenefitCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BenefitCompanion(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $Package_BenefitTable extends Package_Benefit
    with TableInfo<$Package_BenefitTable, Package_BenefitData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $Package_BenefitTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _packageIdMeta =
      const VerificationMeta('packageId');
  @override
  late final GeneratedColumn<int> packageId = GeneratedColumn<int>(
      'package_id', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'REFERENCES package(id)');
  static const VerificationMeta _benefitIdMeta =
      const VerificationMeta('benefitId');
  @override
  late final GeneratedColumn<int> benefitId = GeneratedColumn<int>(
      'benefit_id', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'REFERENCES benefit(id)');
  @override
  List<GeneratedColumn> get $columns => [id, packageId, benefitId];
  @override
  String get aliasedName => _alias ?? 'package_benefit';
  @override
  String get actualTableName => 'package_benefit';
  @override
  VerificationContext validateIntegrity(
      Insertable<Package_BenefitData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('package_id')) {
      context.handle(_packageIdMeta,
          packageId.isAcceptableOrUnknown(data['package_id']!, _packageIdMeta));
    }
    if (data.containsKey('benefit_id')) {
      context.handle(_benefitIdMeta,
          benefitId.isAcceptableOrUnknown(data['benefit_id']!, _benefitIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Package_BenefitData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Package_BenefitData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      packageId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}package_id']),
      benefitId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}benefit_id']),
    );
  }

  @override
  $Package_BenefitTable createAlias(String alias) {
    return $Package_BenefitTable(attachedDatabase, alias);
  }
}

class Package_BenefitData extends DataClass
    implements Insertable<Package_BenefitData> {
  final int id;
  final int? packageId;
  final int? benefitId;
  const Package_BenefitData({required this.id, this.packageId, this.benefitId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || packageId != null) {
      map['package_id'] = Variable<int>(packageId);
    }
    if (!nullToAbsent || benefitId != null) {
      map['benefit_id'] = Variable<int>(benefitId);
    }
    return map;
  }

  Package_BenefitCompanion toCompanion(bool nullToAbsent) {
    return Package_BenefitCompanion(
      id: Value(id),
      packageId: packageId == null && nullToAbsent
          ? const Value.absent()
          : Value(packageId),
      benefitId: benefitId == null && nullToAbsent
          ? const Value.absent()
          : Value(benefitId),
    );
  }

  factory Package_BenefitData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Package_BenefitData(
      id: serializer.fromJson<int>(json['id']),
      packageId: serializer.fromJson<int?>(json['packageId']),
      benefitId: serializer.fromJson<int?>(json['benefitId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'packageId': serializer.toJson<int?>(packageId),
      'benefitId': serializer.toJson<int?>(benefitId),
    };
  }

  Package_BenefitData copyWith(
          {int? id,
          Value<int?> packageId = const Value.absent(),
          Value<int?> benefitId = const Value.absent()}) =>
      Package_BenefitData(
        id: id ?? this.id,
        packageId: packageId.present ? packageId.value : this.packageId,
        benefitId: benefitId.present ? benefitId.value : this.benefitId,
      );
  @override
  String toString() {
    return (StringBuffer('Package_BenefitData(')
          ..write('id: $id, ')
          ..write('packageId: $packageId, ')
          ..write('benefitId: $benefitId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, packageId, benefitId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Package_BenefitData &&
          other.id == this.id &&
          other.packageId == this.packageId &&
          other.benefitId == this.benefitId);
}

class Package_BenefitCompanion extends UpdateCompanion<Package_BenefitData> {
  final Value<int> id;
  final Value<int?> packageId;
  final Value<int?> benefitId;
  const Package_BenefitCompanion({
    this.id = const Value.absent(),
    this.packageId = const Value.absent(),
    this.benefitId = const Value.absent(),
  });
  Package_BenefitCompanion.insert({
    this.id = const Value.absent(),
    this.packageId = const Value.absent(),
    this.benefitId = const Value.absent(),
  });
  static Insertable<Package_BenefitData> custom({
    Expression<int>? id,
    Expression<int>? packageId,
    Expression<int>? benefitId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (packageId != null) 'package_id': packageId,
      if (benefitId != null) 'benefit_id': benefitId,
    });
  }

  Package_BenefitCompanion copyWith(
      {Value<int>? id, Value<int?>? packageId, Value<int?>? benefitId}) {
    return Package_BenefitCompanion(
      id: id ?? this.id,
      packageId: packageId ?? this.packageId,
      benefitId: benefitId ?? this.benefitId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (packageId.present) {
      map['package_id'] = Variable<int>(packageId.value);
    }
    if (benefitId.present) {
      map['benefit_id'] = Variable<int>(benefitId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('Package_BenefitCompanion(')
          ..write('id: $id, ')
          ..write('packageId: $packageId, ')
          ..write('benefitId: $benefitId')
          ..write(')'))
        .toString();
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(e);
  late final $PackageTable package = $PackageTable(this);
  late final $BenefitTable benefit = $BenefitTable(this);
  late final $Package_BenefitTable packageBenefit = $Package_BenefitTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [package, benefit, packageBenefit];
}
