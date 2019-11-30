// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Caracteristica extends DataClass implements Insertable<Caracteristica> {
  final int id;
  final int tamanho;
  final String atividades;
  final int empregados;
  final int diaristas;
  final String estrutura;
  final String equipamentos;
  Caracteristica(
      {@required this.id,
      @required this.tamanho,
      @required this.atividades,
      @required this.empregados,
      @required this.diaristas,
      @required this.estrutura,
      @required this.equipamentos});
  factory Caracteristica.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Caracteristica(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      tamanho:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}tamanho']),
      atividades: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}atividades']),
      empregados:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}empregados']),
      diaristas:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}diaristas']),
      estrutura: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}estrutura']),
      equipamentos: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}equipamentos']),
    );
  }
  factory Caracteristica.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return Caracteristica(
      id: serializer.fromJson<int>(json['id']),
      tamanho: serializer.fromJson<int>(json['tamanho']),
      atividades: serializer.fromJson<String>(json['atividades']),
      empregados: serializer.fromJson<int>(json['empregados']),
      diaristas: serializer.fromJson<int>(json['diaristas']),
      estrutura: serializer.fromJson<String>(json['estrutura']),
      equipamentos: serializer.fromJson<String>(json['equipamentos']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'id': serializer.toJson<int>(id),
      'tamanho': serializer.toJson<int>(tamanho),
      'atividades': serializer.toJson<String>(atividades),
      'empregados': serializer.toJson<int>(empregados),
      'diaristas': serializer.toJson<int>(diaristas),
      'estrutura': serializer.toJson<String>(estrutura),
      'equipamentos': serializer.toJson<String>(equipamentos),
    };
  }

  @override
  Future<CaracteristicasCompanion> createCompanion(bool nullToAbsent) async {
    return CaracteristicasCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      tamanho: tamanho == null && nullToAbsent
          ? const Value.absent()
          : Value(tamanho),
      atividades: atividades == null && nullToAbsent
          ? const Value.absent()
          : Value(atividades),
      empregados: empregados == null && nullToAbsent
          ? const Value.absent()
          : Value(empregados),
      diaristas: diaristas == null && nullToAbsent
          ? const Value.absent()
          : Value(diaristas),
      estrutura: estrutura == null && nullToAbsent
          ? const Value.absent()
          : Value(estrutura),
      equipamentos: equipamentos == null && nullToAbsent
          ? const Value.absent()
          : Value(equipamentos),
    );
  }

  Caracteristica copyWith(
          {int id,
          int tamanho,
          String atividades,
          int empregados,
          int diaristas,
          String estrutura,
          String equipamentos}) =>
      Caracteristica(
        id: id ?? this.id,
        tamanho: tamanho ?? this.tamanho,
        atividades: atividades ?? this.atividades,
        empregados: empregados ?? this.empregados,
        diaristas: diaristas ?? this.diaristas,
        estrutura: estrutura ?? this.estrutura,
        equipamentos: equipamentos ?? this.equipamentos,
      );
  @override
  String toString() {
    return (StringBuffer('Caracteristica(')
          ..write('id: $id, ')
          ..write('tamanho: $tamanho, ')
          ..write('atividades: $atividades, ')
          ..write('empregados: $empregados, ')
          ..write('diaristas: $diaristas, ')
          ..write('estrutura: $estrutura, ')
          ..write('equipamentos: $equipamentos')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          tamanho.hashCode,
          $mrjc(
              atividades.hashCode,
              $mrjc(
                  empregados.hashCode,
                  $mrjc(diaristas.hashCode,
                      $mrjc(estrutura.hashCode, equipamentos.hashCode)))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Caracteristica &&
          other.id == this.id &&
          other.tamanho == this.tamanho &&
          other.atividades == this.atividades &&
          other.empregados == this.empregados &&
          other.diaristas == this.diaristas &&
          other.estrutura == this.estrutura &&
          other.equipamentos == this.equipamentos);
}

class CaracteristicasCompanion extends UpdateCompanion<Caracteristica> {
  final Value<int> id;
  final Value<int> tamanho;
  final Value<String> atividades;
  final Value<int> empregados;
  final Value<int> diaristas;
  final Value<String> estrutura;
  final Value<String> equipamentos;
  const CaracteristicasCompanion({
    this.id = const Value.absent(),
    this.tamanho = const Value.absent(),
    this.atividades = const Value.absent(),
    this.empregados = const Value.absent(),
    this.diaristas = const Value.absent(),
    this.estrutura = const Value.absent(),
    this.equipamentos = const Value.absent(),
  });
  CaracteristicasCompanion.insert({
    this.id = const Value.absent(),
    @required int tamanho,
    @required String atividades,
    @required int empregados,
    @required int diaristas,
    @required String estrutura,
    @required String equipamentos,
  })  : tamanho = Value(tamanho),
        atividades = Value(atividades),
        empregados = Value(empregados),
        diaristas = Value(diaristas),
        estrutura = Value(estrutura),
        equipamentos = Value(equipamentos);
  CaracteristicasCompanion copyWith(
      {Value<int> id,
      Value<int> tamanho,
      Value<String> atividades,
      Value<int> empregados,
      Value<int> diaristas,
      Value<String> estrutura,
      Value<String> equipamentos}) {
    return CaracteristicasCompanion(
      id: id ?? this.id,
      tamanho: tamanho ?? this.tamanho,
      atividades: atividades ?? this.atividades,
      empregados: empregados ?? this.empregados,
      diaristas: diaristas ?? this.diaristas,
      estrutura: estrutura ?? this.estrutura,
      equipamentos: equipamentos ?? this.equipamentos,
    );
  }
}

class $CaracteristicasTable extends Caracteristicas
    with TableInfo<$CaracteristicasTable, Caracteristica> {
  final GeneratedDatabase _db;
  final String _alias;
  $CaracteristicasTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _tamanhoMeta = const VerificationMeta('tamanho');
  GeneratedIntColumn _tamanho;
  @override
  GeneratedIntColumn get tamanho => _tamanho ??= _constructTamanho();
  GeneratedIntColumn _constructTamanho() {
    return GeneratedIntColumn(
      'tamanho',
      $tableName,
      false,
    );
  }

  final VerificationMeta _atividadesMeta = const VerificationMeta('atividades');
  GeneratedTextColumn _atividades;
  @override
  GeneratedTextColumn get atividades => _atividades ??= _constructAtividades();
  GeneratedTextColumn _constructAtividades() {
    return GeneratedTextColumn('atividades', $tableName, false,
        minTextLength: 2, maxTextLength: 8);
  }

  final VerificationMeta _empregadosMeta = const VerificationMeta('empregados');
  GeneratedIntColumn _empregados;
  @override
  GeneratedIntColumn get empregados => _empregados ??= _constructEmpregados();
  GeneratedIntColumn _constructEmpregados() {
    return GeneratedIntColumn(
      'empregados',
      $tableName,
      false,
    );
  }

  final VerificationMeta _diaristasMeta = const VerificationMeta('diaristas');
  GeneratedIntColumn _diaristas;
  @override
  GeneratedIntColumn get diaristas => _diaristas ??= _constructDiaristas();
  GeneratedIntColumn _constructDiaristas() {
    return GeneratedIntColumn(
      'diaristas',
      $tableName,
      false,
    );
  }

  final VerificationMeta _estruturaMeta = const VerificationMeta('estrutura');
  GeneratedTextColumn _estrutura;
  @override
  GeneratedTextColumn get estrutura => _estrutura ??= _constructEstrutura();
  GeneratedTextColumn _constructEstrutura() {
    return GeneratedTextColumn('estrutura', $tableName, false,
        minTextLength: 10, maxTextLength: 25);
  }

  final VerificationMeta _equipamentosMeta =
      const VerificationMeta('equipamentos');
  GeneratedTextColumn _equipamentos;
  @override
  GeneratedTextColumn get equipamentos =>
      _equipamentos ??= _constructEquipamentos();
  GeneratedTextColumn _constructEquipamentos() {
    return GeneratedTextColumn('equipamentos', $tableName, false,
        minTextLength: 10, maxTextLength: 25);
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, tamanho, atividades, empregados, diaristas, estrutura, equipamentos];
  @override
  $CaracteristicasTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'caracteristicas';
  @override
  final String actualTableName = 'caracteristicas';
  @override
  VerificationContext validateIntegrity(CaracteristicasCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    } else if (id.isRequired && isInserting) {
      context.missing(_idMeta);
    }
    if (d.tamanho.present) {
      context.handle(_tamanhoMeta,
          tamanho.isAcceptableValue(d.tamanho.value, _tamanhoMeta));
    } else if (tamanho.isRequired && isInserting) {
      context.missing(_tamanhoMeta);
    }
    if (d.atividades.present) {
      context.handle(_atividadesMeta,
          atividades.isAcceptableValue(d.atividades.value, _atividadesMeta));
    } else if (atividades.isRequired && isInserting) {
      context.missing(_atividadesMeta);
    }
    if (d.empregados.present) {
      context.handle(_empregadosMeta,
          empregados.isAcceptableValue(d.empregados.value, _empregadosMeta));
    } else if (empregados.isRequired && isInserting) {
      context.missing(_empregadosMeta);
    }
    if (d.diaristas.present) {
      context.handle(_diaristasMeta,
          diaristas.isAcceptableValue(d.diaristas.value, _diaristasMeta));
    } else if (diaristas.isRequired && isInserting) {
      context.missing(_diaristasMeta);
    }
    if (d.estrutura.present) {
      context.handle(_estruturaMeta,
          estrutura.isAcceptableValue(d.estrutura.value, _estruturaMeta));
    } else if (estrutura.isRequired && isInserting) {
      context.missing(_estruturaMeta);
    }
    if (d.equipamentos.present) {
      context.handle(
          _equipamentosMeta,
          equipamentos.isAcceptableValue(
              d.equipamentos.value, _equipamentosMeta));
    } else if (equipamentos.isRequired && isInserting) {
      context.missing(_equipamentosMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Caracteristica map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Caracteristica.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(CaracteristicasCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.tamanho.present) {
      map['tamanho'] = Variable<int, IntType>(d.tamanho.value);
    }
    if (d.atividades.present) {
      map['atividades'] = Variable<String, StringType>(d.atividades.value);
    }
    if (d.empregados.present) {
      map['empregados'] = Variable<int, IntType>(d.empregados.value);
    }
    if (d.diaristas.present) {
      map['diaristas'] = Variable<int, IntType>(d.diaristas.value);
    }
    if (d.estrutura.present) {
      map['estrutura'] = Variable<String, StringType>(d.estrutura.value);
    }
    if (d.equipamentos.present) {
      map['equipamentos'] = Variable<String, StringType>(d.equipamentos.value);
    }
    return map;
  }

  @override
  $CaracteristicasTable createAlias(String alias) {
    return $CaracteristicasTable(_db, alias);
  }
}

class Iten extends DataClass implements Insertable<Iten> {
  final int id;
  final String nome;
  final int vidautil;
  final int percentual;
  final int deprec3;
  final int deprec1;
  Iten(
      {@required this.id,
      @required this.nome,
      @required this.vidautil,
      @required this.percentual,
      @required this.deprec3,
      @required this.deprec1});
  factory Iten.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Iten(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      nome: stringType.mapFromDatabaseResponse(data['${effectivePrefix}nome']),
      vidautil:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}vidautil']),
      percentual:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}percentual']),
      deprec3:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}deprec3']),
      deprec1:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}deprec1']),
    );
  }
  factory Iten.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return Iten(
      id: serializer.fromJson<int>(json['id']),
      nome: serializer.fromJson<String>(json['nome']),
      vidautil: serializer.fromJson<int>(json['vidautil']),
      percentual: serializer.fromJson<int>(json['percentual']),
      deprec3: serializer.fromJson<int>(json['deprec3']),
      deprec1: serializer.fromJson<int>(json['deprec1']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'id': serializer.toJson<int>(id),
      'nome': serializer.toJson<String>(nome),
      'vidautil': serializer.toJson<int>(vidautil),
      'percentual': serializer.toJson<int>(percentual),
      'deprec3': serializer.toJson<int>(deprec3),
      'deprec1': serializer.toJson<int>(deprec1),
    };
  }

  @override
  ItensCompanion createCompanion(bool nullToAbsent) {
    return ItensCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      nome: nome == null && nullToAbsent ? const Value.absent() : Value(nome),
      vidautil: vidautil == null && nullToAbsent
          ? const Value.absent()
          : Value(vidautil),
      percentual: percentual == null && nullToAbsent
          ? const Value.absent()
          : Value(percentual),
      deprec3: deprec3 == null && nullToAbsent
          ? const Value.absent()
          : Value(deprec3),
      deprec1: deprec1 == null && nullToAbsent
          ? const Value.absent()
          : Value(deprec1),
    );
  }

  Iten copyWith(
          {int id,
          String nome,
          int vidautil,
          int percentual,
          int deprec3,
          int deprec1}) =>
      Iten(
        id: id ?? this.id,
        nome: nome ?? this.nome,
        vidautil: vidautil ?? this.vidautil,
        percentual: percentual ?? this.percentual,
        deprec3: deprec3 ?? this.deprec3,
        deprec1: deprec1 ?? this.deprec1,
      );
  @override
  String toString() {
    return (StringBuffer('Iten(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('vidautil: $vidautil, ')
          ..write('percentual: $percentual, ')
          ..write('deprec3: $deprec3, ')
          ..write('deprec1: $deprec1')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          nome.hashCode,
          $mrjc(
              vidautil.hashCode,
              $mrjc(percentual.hashCode,
                  $mrjc(deprec3.hashCode, deprec1.hashCode))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Iten &&
          other.id == this.id &&
          other.nome == this.nome &&
          other.vidautil == this.vidautil &&
          other.percentual == this.percentual &&
          other.deprec3 == this.deprec3 &&
          other.deprec1 == this.deprec1);
}

class ItensCompanion extends UpdateCompanion<Iten> {
  final Value<int> id;
  final Value<String> nome;
  final Value<int> vidautil;
  final Value<int> percentual;
  final Value<int> deprec3;
  final Value<int> deprec1;
  const ItensCompanion({
    this.id = const Value.absent(),
    this.nome = const Value.absent(),
    this.vidautil = const Value.absent(),
    this.percentual = const Value.absent(),
    this.deprec3 = const Value.absent(),
    this.deprec1 = const Value.absent(),
  });
  ItensCompanion.insert({
    this.id = const Value.absent(),
    @required String nome,
    @required int vidautil,
    @required int percentual,
    @required int deprec3,
    @required int deprec1,
  })  : nome = Value(nome),
        vidautil = Value(vidautil),
        percentual = Value(percentual),
        deprec3 = Value(deprec3),
        deprec1 = Value(deprec1);
  ItensCompanion copyWith(
      {Value<int> id,
      Value<String> nome,
      Value<int> vidautil,
      Value<int> percentual,
      Value<int> deprec3,
      Value<int> deprec1}) {
    return ItensCompanion(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      vidautil: vidautil ?? this.vidautil,
      percentual: percentual ?? this.percentual,
      deprec3: deprec3 ?? this.deprec3,
      deprec1: deprec1 ?? this.deprec1,
    );
  }
}

class $ItensTable extends Itens with TableInfo<$ItensTable, Iten> {
  final GeneratedDatabase _db;
  final String _alias;
  $ItensTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _nomeMeta = const VerificationMeta('nome');
  GeneratedTextColumn _nome;
  @override
  GeneratedTextColumn get nome => _nome ??= _constructNome();
  GeneratedTextColumn _constructNome() {
    return GeneratedTextColumn('nome', $tableName, false, maxTextLength: 10);
  }

  final VerificationMeta _vidautilMeta = const VerificationMeta('vidautil');
  GeneratedIntColumn _vidautil;
  @override
  GeneratedIntColumn get vidautil => _vidautil ??= _constructVidautil();
  GeneratedIntColumn _constructVidautil() {
    return GeneratedIntColumn(
      'vidautil',
      $tableName,
      false,
    );
  }

  final VerificationMeta _percentualMeta = const VerificationMeta('percentual');
  GeneratedIntColumn _percentual;
  @override
  GeneratedIntColumn get percentual => _percentual ??= _constructPercentual();
  GeneratedIntColumn _constructPercentual() {
    return GeneratedIntColumn(
      'percentual',
      $tableName,
      false,
    );
  }

  final VerificationMeta _deprec3Meta = const VerificationMeta('deprec3');
  GeneratedIntColumn _deprec3;
  @override
  GeneratedIntColumn get deprec3 => _deprec3 ??= _constructDeprec3();
  GeneratedIntColumn _constructDeprec3() {
    return GeneratedIntColumn(
      'deprec3',
      $tableName,
      false,
    );
  }

  final VerificationMeta _deprec1Meta = const VerificationMeta('deprec1');
  GeneratedIntColumn _deprec1;
  @override
  GeneratedIntColumn get deprec1 => _deprec1 ??= _constructDeprec1();
  GeneratedIntColumn _constructDeprec1() {
    return GeneratedIntColumn(
      'deprec1',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, nome, vidautil, percentual, deprec3, deprec1];
  @override
  $ItensTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'itens';
  @override
  final String actualTableName = 'itens';
  @override
  VerificationContext validateIntegrity(ItensCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    } else if (id.isRequired && isInserting) {
      context.missing(_idMeta);
    }
    if (d.nome.present) {
      context.handle(
          _nomeMeta, nome.isAcceptableValue(d.nome.value, _nomeMeta));
    } else if (nome.isRequired && isInserting) {
      context.missing(_nomeMeta);
    }
    if (d.vidautil.present) {
      context.handle(_vidautilMeta,
          vidautil.isAcceptableValue(d.vidautil.value, _vidautilMeta));
    } else if (vidautil.isRequired && isInserting) {
      context.missing(_vidautilMeta);
    }
    if (d.percentual.present) {
      context.handle(_percentualMeta,
          percentual.isAcceptableValue(d.percentual.value, _percentualMeta));
    } else if (percentual.isRequired && isInserting) {
      context.missing(_percentualMeta);
    }
    if (d.deprec3.present) {
      context.handle(_deprec3Meta,
          deprec3.isAcceptableValue(d.deprec3.value, _deprec3Meta));
    } else if (deprec3.isRequired && isInserting) {
      context.missing(_deprec3Meta);
    }
    if (d.deprec1.present) {
      context.handle(_deprec1Meta,
          deprec1.isAcceptableValue(d.deprec1.value, _deprec1Meta));
    } else if (deprec1.isRequired && isInserting) {
      context.missing(_deprec1Meta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Iten map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Iten.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(ItensCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.nome.present) {
      map['nome'] = Variable<String, StringType>(d.nome.value);
    }
    if (d.vidautil.present) {
      map['vidautil'] = Variable<int, IntType>(d.vidautil.value);
    }
    if (d.percentual.present) {
      map['percentual'] = Variable<int, IntType>(d.percentual.value);
    }
    if (d.deprec3.present) {
      map['deprec3'] = Variable<int, IntType>(d.deprec3.value);
    }
    if (d.deprec1.present) {
      map['deprec1'] = Variable<int, IntType>(d.deprec1.value);
    }
    return map;
  }

  @override
  $ItensTable createAlias(String alias) {
    return $ItensTable(_db, alias);
  }
}

class MaoDeObra extends DataClass implements Insertable<MaoDeObra> {
  final int id;
  final int prince;
  final String ano;
  MaoDeObra({@required this.id, @required this.prince, @required this.ano});
  factory MaoDeObra.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return MaoDeObra(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      prince: intType.mapFromDatabaseResponse(data['${effectivePrefix}prince']),
      ano: stringType.mapFromDatabaseResponse(data['${effectivePrefix}ano']),
    );
  }
  factory MaoDeObra.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return MaoDeObra(
      id: serializer.fromJson<int>(json['id']),
      prince: serializer.fromJson<int>(json['prince']),
      ano: serializer.fromJson<String>(json['ano']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'id': serializer.toJson<int>(id),
      'prince': serializer.toJson<int>(prince),
      'ano': serializer.toJson<String>(ano),
    };
  }

  @override
  MaoDeObrasCompanion createCompanion(bool nullToAbsent) {
    return MaoDeObrasCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      prince:
          prince == null && nullToAbsent ? const Value.absent() : Value(prince),
      ano: ano == null && nullToAbsent ? const Value.absent() : Value(ano),
    );
  }

  MaoDeObra copyWith({int id, int prince, String ano}) => MaoDeObra(
        id: id ?? this.id,
        prince: prince ?? this.prince,
        ano: ano ?? this.ano,
      );
  @override
  String toString() {
    return (StringBuffer('MaoDeObra(')
          ..write('id: $id, ')
          ..write('prince: $prince, ')
          ..write('ano: $ano')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(id.hashCode, $mrjc(prince.hashCode, ano.hashCode)));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is MaoDeObra &&
          other.id == this.id &&
          other.prince == this.prince &&
          other.ano == this.ano);
}

class MaoDeObrasCompanion extends UpdateCompanion<MaoDeObra> {
  final Value<int> id;
  final Value<int> prince;
  final Value<String> ano;
  const MaoDeObrasCompanion({
    this.id = const Value.absent(),
    this.prince = const Value.absent(),
    this.ano = const Value.absent(),
  });
  MaoDeObrasCompanion.insert({
    this.id = const Value.absent(),
    @required int prince,
    @required String ano,
  })  : prince = Value(prince),
        ano = Value(ano);
  MaoDeObrasCompanion copyWith(
      {Value<int> id, Value<int> prince, Value<String> ano}) {
    return MaoDeObrasCompanion(
      id: id ?? this.id,
      prince: prince ?? this.prince,
      ano: ano ?? this.ano,
    );
  }
}

class $MaoDeObrasTable extends MaoDeObras
    with TableInfo<$MaoDeObrasTable, MaoDeObra> {
  final GeneratedDatabase _db;
  final String _alias;
  $MaoDeObrasTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _princeMeta = const VerificationMeta('prince');
  GeneratedIntColumn _prince;
  @override
  GeneratedIntColumn get prince => _prince ??= _constructPrince();
  GeneratedIntColumn _constructPrince() {
    return GeneratedIntColumn(
      'prince',
      $tableName,
      false,
    );
  }

  final VerificationMeta _anoMeta = const VerificationMeta('ano');
  GeneratedTextColumn _ano;
  @override
  GeneratedTextColumn get ano => _ano ??= _constructAno();
  GeneratedTextColumn _constructAno() {
    return GeneratedTextColumn(
      'ano',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, prince, ano];
  @override
  $MaoDeObrasTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'mao_de_obras';
  @override
  final String actualTableName = 'mao_de_obras';
  @override
  VerificationContext validateIntegrity(MaoDeObrasCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    } else if (id.isRequired && isInserting) {
      context.missing(_idMeta);
    }
    if (d.prince.present) {
      context.handle(
          _princeMeta, prince.isAcceptableValue(d.prince.value, _princeMeta));
    } else if (prince.isRequired && isInserting) {
      context.missing(_princeMeta);
    }
    if (d.ano.present) {
      context.handle(_anoMeta, ano.isAcceptableValue(d.ano.value, _anoMeta));
    } else if (ano.isRequired && isInserting) {
      context.missing(_anoMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MaoDeObra map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return MaoDeObra.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(MaoDeObrasCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.prince.present) {
      map['prince'] = Variable<int, IntType>(d.prince.value);
    }
    if (d.ano.present) {
      map['ano'] = Variable<String, StringType>(d.ano.value);
    }
    return map;
  }

  @override
  $MaoDeObrasTable createAlias(String alias) {
    return $MaoDeObrasTable(_db, alias);
  }
}

class Insumo extends DataClass implements Insertable<Insumo> {
  final int id;
  final int prince;
  final String ano;
  Insumo({@required this.id, @required this.prince, @required this.ano});
  factory Insumo.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Insumo(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      prince: intType.mapFromDatabaseResponse(data['${effectivePrefix}prince']),
      ano: stringType.mapFromDatabaseResponse(data['${effectivePrefix}ano']),
    );
  }
  factory Insumo.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return Insumo(
      id: serializer.fromJson<int>(json['id']),
      prince: serializer.fromJson<int>(json['prince']),
      ano: serializer.fromJson<String>(json['ano']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'id': serializer.toJson<int>(id),
      'prince': serializer.toJson<int>(prince),
      'ano': serializer.toJson<String>(ano),
    };
  }

  @override
  InsumosCompanion createCompanion(bool nullToAbsent) {
    return InsumosCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      prince:
          prince == null && nullToAbsent ? const Value.absent() : Value(prince),
      ano: ano == null && nullToAbsent ? const Value.absent() : Value(ano),
    );
  }

  Insumo copyWith({int id, int prince, String ano}) => Insumo(
        id: id ?? this.id,
        prince: prince ?? this.prince,
        ano: ano ?? this.ano,
      );
  @override
  String toString() {
    return (StringBuffer('Insumo(')
          ..write('id: $id, ')
          ..write('prince: $prince, ')
          ..write('ano: $ano')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(id.hashCode, $mrjc(prince.hashCode, ano.hashCode)));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Insumo &&
          other.id == this.id &&
          other.prince == this.prince &&
          other.ano == this.ano);
}

class InsumosCompanion extends UpdateCompanion<Insumo> {
  final Value<int> id;
  final Value<int> prince;
  final Value<String> ano;
  const InsumosCompanion({
    this.id = const Value.absent(),
    this.prince = const Value.absent(),
    this.ano = const Value.absent(),
  });
  InsumosCompanion.insert({
    this.id = const Value.absent(),
    @required int prince,
    @required String ano,
  })  : prince = Value(prince),
        ano = Value(ano);
  InsumosCompanion copyWith(
      {Value<int> id, Value<int> prince, Value<String> ano}) {
    return InsumosCompanion(
      id: id ?? this.id,
      prince: prince ?? this.prince,
      ano: ano ?? this.ano,
    );
  }
}

class $InsumosTable extends Insumos with TableInfo<$InsumosTable, Insumo> {
  final GeneratedDatabase _db;
  final String _alias;
  $InsumosTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _princeMeta = const VerificationMeta('prince');
  GeneratedIntColumn _prince;
  @override
  GeneratedIntColumn get prince => _prince ??= _constructPrince();
  GeneratedIntColumn _constructPrince() {
    return GeneratedIntColumn(
      'prince',
      $tableName,
      false,
    );
  }

  final VerificationMeta _anoMeta = const VerificationMeta('ano');
  GeneratedTextColumn _ano;
  @override
  GeneratedTextColumn get ano => _ano ??= _constructAno();
  GeneratedTextColumn _constructAno() {
    return GeneratedTextColumn(
      'ano',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, prince, ano];
  @override
  $InsumosTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'insumos';
  @override
  final String actualTableName = 'insumos';
  @override
  VerificationContext validateIntegrity(InsumosCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    } else if (id.isRequired && isInserting) {
      context.missing(_idMeta);
    }
    if (d.prince.present) {
      context.handle(
          _princeMeta, prince.isAcceptableValue(d.prince.value, _princeMeta));
    } else if (prince.isRequired && isInserting) {
      context.missing(_princeMeta);
    }
    if (d.ano.present) {
      context.handle(_anoMeta, ano.isAcceptableValue(d.ano.value, _anoMeta));
    } else if (ano.isRequired && isInserting) {
      context.missing(_anoMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Insumo map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Insumo.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(InsumosCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.prince.present) {
      map['prince'] = Variable<int, IntType>(d.prince.value);
    }
    if (d.ano.present) {
      map['ano'] = Variable<String, StringType>(d.ano.value);
    }
    return map;
  }

  @override
  $InsumosTable createAlias(String alias) {
    return $InsumosTable(_db, alias);
  }
}

class Despesa extends DataClass implements Insertable<Despesa> {
  final int id;
  final int prince;
  final String ano;
  Despesa({@required this.id, @required this.prince, @required this.ano});
  factory Despesa.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Despesa(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      prince: intType.mapFromDatabaseResponse(data['${effectivePrefix}prince']),
      ano: stringType.mapFromDatabaseResponse(data['${effectivePrefix}ano']),
    );
  }
  factory Despesa.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return Despesa(
      id: serializer.fromJson<int>(json['id']),
      prince: serializer.fromJson<int>(json['prince']),
      ano: serializer.fromJson<String>(json['ano']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'id': serializer.toJson<int>(id),
      'prince': serializer.toJson<int>(prince),
      'ano': serializer.toJson<String>(ano),
    };
  }

  @override
  DespesasCompanion createCompanion(bool nullToAbsent) {
    return DespesasCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      prince:
          prince == null && nullToAbsent ? const Value.absent() : Value(prince),
      ano: ano == null && nullToAbsent ? const Value.absent() : Value(ano),
    );
  }

  Despesa copyWith({int id, int prince, String ano}) => Despesa(
        id: id ?? this.id,
        prince: prince ?? this.prince,
        ano: ano ?? this.ano,
      );
  @override
  String toString() {
    return (StringBuffer('Despesa(')
          ..write('id: $id, ')
          ..write('prince: $prince, ')
          ..write('ano: $ano')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(id.hashCode, $mrjc(prince.hashCode, ano.hashCode)));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Despesa &&
          other.id == this.id &&
          other.prince == this.prince &&
          other.ano == this.ano);
}

class DespesasCompanion extends UpdateCompanion<Despesa> {
  final Value<int> id;
  final Value<int> prince;
  final Value<String> ano;
  const DespesasCompanion({
    this.id = const Value.absent(),
    this.prince = const Value.absent(),
    this.ano = const Value.absent(),
  });
  DespesasCompanion.insert({
    this.id = const Value.absent(),
    @required int prince,
    @required String ano,
  })  : prince = Value(prince),
        ano = Value(ano);
  DespesasCompanion copyWith(
      {Value<int> id, Value<int> prince, Value<String> ano}) {
    return DespesasCompanion(
      id: id ?? this.id,
      prince: prince ?? this.prince,
      ano: ano ?? this.ano,
    );
  }
}

class $DespesasTable extends Despesas with TableInfo<$DespesasTable, Despesa> {
  final GeneratedDatabase _db;
  final String _alias;
  $DespesasTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _princeMeta = const VerificationMeta('prince');
  GeneratedIntColumn _prince;
  @override
  GeneratedIntColumn get prince => _prince ??= _constructPrince();
  GeneratedIntColumn _constructPrince() {
    return GeneratedIntColumn(
      'prince',
      $tableName,
      false,
    );
  }

  final VerificationMeta _anoMeta = const VerificationMeta('ano');
  GeneratedTextColumn _ano;
  @override
  GeneratedTextColumn get ano => _ano ??= _constructAno();
  GeneratedTextColumn _constructAno() {
    return GeneratedTextColumn(
      'ano',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, prince, ano];
  @override
  $DespesasTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'despesas';
  @override
  final String actualTableName = 'despesas';
  @override
  VerificationContext validateIntegrity(DespesasCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    } else if (id.isRequired && isInserting) {
      context.missing(_idMeta);
    }
    if (d.prince.present) {
      context.handle(
          _princeMeta, prince.isAcceptableValue(d.prince.value, _princeMeta));
    } else if (prince.isRequired && isInserting) {
      context.missing(_princeMeta);
    }
    if (d.ano.present) {
      context.handle(_anoMeta, ano.isAcceptableValue(d.ano.value, _anoMeta));
    } else if (ano.isRequired && isInserting) {
      context.missing(_anoMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Despesa map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Despesa.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(DespesasCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.prince.present) {
      map['prince'] = Variable<int, IntType>(d.prince.value);
    }
    if (d.ano.present) {
      map['ano'] = Variable<String, StringType>(d.ano.value);
    }
    return map;
  }

  @override
  $DespesasTable createAlias(String alias) {
    return $DespesasTable(_db, alias);
  }
}

class Outro extends DataClass implements Insertable<Outro> {
  final int id;
  final int prince;
  final String ano;
  Outro({@required this.id, @required this.prince, @required this.ano});
  factory Outro.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Outro(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      prince: intType.mapFromDatabaseResponse(data['${effectivePrefix}prince']),
      ano: stringType.mapFromDatabaseResponse(data['${effectivePrefix}ano']),
    );
  }
  factory Outro.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return Outro(
      id: serializer.fromJson<int>(json['id']),
      prince: serializer.fromJson<int>(json['prince']),
      ano: serializer.fromJson<String>(json['ano']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'id': serializer.toJson<int>(id),
      'prince': serializer.toJson<int>(prince),
      'ano': serializer.toJson<String>(ano),
    };
  }

  @override
  OutrosCompanion createCompanion(bool nullToAbsent) {
    return OutrosCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      prince:
          prince == null && nullToAbsent ? const Value.absent() : Value(prince),
      ano: ano == null && nullToAbsent ? const Value.absent() : Value(ano),
    );
  }

  Outro copyWith({int id, int prince, String ano}) => Outro(
        id: id ?? this.id,
        prince: prince ?? this.prince,
        ano: ano ?? this.ano,
      );
  @override
  String toString() {
    return (StringBuffer('Outro(')
          ..write('id: $id, ')
          ..write('prince: $prince, ')
          ..write('ano: $ano')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(id.hashCode, $mrjc(prince.hashCode, ano.hashCode)));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Outro &&
          other.id == this.id &&
          other.prince == this.prince &&
          other.ano == this.ano);
}

class OutrosCompanion extends UpdateCompanion<Outro> {
  final Value<int> id;
  final Value<int> prince;
  final Value<String> ano;
  const OutrosCompanion({
    this.id = const Value.absent(),
    this.prince = const Value.absent(),
    this.ano = const Value.absent(),
  });
  OutrosCompanion.insert({
    this.id = const Value.absent(),
    @required int prince,
    @required String ano,
  })  : prince = Value(prince),
        ano = Value(ano);
  OutrosCompanion copyWith(
      {Value<int> id, Value<int> prince, Value<String> ano}) {
    return OutrosCompanion(
      id: id ?? this.id,
      prince: prince ?? this.prince,
      ano: ano ?? this.ano,
    );
  }
}

class $OutrosTable extends Outros with TableInfo<$OutrosTable, Outro> {
  final GeneratedDatabase _db;
  final String _alias;
  $OutrosTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _princeMeta = const VerificationMeta('prince');
  GeneratedIntColumn _prince;
  @override
  GeneratedIntColumn get prince => _prince ??= _constructPrince();
  GeneratedIntColumn _constructPrince() {
    return GeneratedIntColumn(
      'prince',
      $tableName,
      false,
    );
  }

  final VerificationMeta _anoMeta = const VerificationMeta('ano');
  GeneratedTextColumn _ano;
  @override
  GeneratedTextColumn get ano => _ano ??= _constructAno();
  GeneratedTextColumn _constructAno() {
    return GeneratedTextColumn(
      'ano',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, prince, ano];
  @override
  $OutrosTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'outros';
  @override
  final String actualTableName = 'outros';
  @override
  VerificationContext validateIntegrity(OutrosCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    } else if (id.isRequired && isInserting) {
      context.missing(_idMeta);
    }
    if (d.prince.present) {
      context.handle(
          _princeMeta, prince.isAcceptableValue(d.prince.value, _princeMeta));
    } else if (prince.isRequired && isInserting) {
      context.missing(_princeMeta);
    }
    if (d.ano.present) {
      context.handle(_anoMeta, ano.isAcceptableValue(d.ano.value, _anoMeta));
    } else if (ano.isRequired && isInserting) {
      context.missing(_anoMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Outro map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Outro.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(OutrosCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.prince.present) {
      map['prince'] = Variable<int, IntType>(d.prince.value);
    }
    if (d.ano.present) {
      map['ano'] = Variable<String, StringType>(d.ano.value);
    }
    return map;
  }

  @override
  $OutrosTable createAlias(String alias) {
    return $OutrosTable(_db, alias);
  }
}

abstract class _$MyDataBase extends GeneratedDatabase {
  _$MyDataBase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $CaracteristicasTable _caracteristicas;
  $CaracteristicasTable get caracteristicas =>
      _caracteristicas ??= $CaracteristicasTable(this);
  $ItensTable _itens;
  $ItensTable get itens => _itens ??= $ItensTable(this);
  $MaoDeObrasTable _maoDeObras;
  $MaoDeObrasTable get maoDeObras => _maoDeObras ??= $MaoDeObrasTable(this);
  $InsumosTable _insumos;
  $InsumosTable get insumos => _insumos ??= $InsumosTable(this);
  $DespesasTable _despesas;
  $DespesasTable get despesas => _despesas ??= $DespesasTable(this);
  $OutrosTable _outros;
  $OutrosTable get outros => _outros ??= $OutrosTable(this);
  @override
  List<TableInfo> get allTables =>
      [caracteristicas, itens, maoDeObras, insumos, despesas, outros];
}
