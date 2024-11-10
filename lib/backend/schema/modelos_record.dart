import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ModelosRecord extends FirestoreRecord {
  ModelosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "codigo" field.
  int? _codigo;
  int get codigo => _codigo ?? 0;
  bool hasCodigo() => _codigo != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "assunto" field.
  String? _assunto;
  String get assunto => _assunto ?? '';
  bool hasAssunto() => _assunto != null;

  // "conteudo" field.
  String? _conteudo;
  String get conteudo => _conteudo ?? '';
  bool hasConteudo() => _conteudo != null;

  void _initializeFields() {
    _codigo = castToType<int>(snapshotData['codigo']);
    _descricao = snapshotData['descricao'] as String?;
    _assunto = snapshotData['assunto'] as String?;
    _conteudo = snapshotData['conteudo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('modelos');

  static Stream<ModelosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ModelosRecord.fromSnapshot(s));

  static Future<ModelosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ModelosRecord.fromSnapshot(s));

  static ModelosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ModelosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ModelosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ModelosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ModelosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ModelosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createModelosRecordData({
  int? codigo,
  String? descricao,
  String? assunto,
  String? conteudo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'codigo': codigo,
      'descricao': descricao,
      'assunto': assunto,
      'conteudo': conteudo,
    }.withoutNulls,
  );

  return firestoreData;
}

class ModelosRecordDocumentEquality implements Equality<ModelosRecord> {
  const ModelosRecordDocumentEquality();

  @override
  bool equals(ModelosRecord? e1, ModelosRecord? e2) {
    return e1?.codigo == e2?.codigo &&
        e1?.descricao == e2?.descricao &&
        e1?.assunto == e2?.assunto &&
        e1?.conteudo == e2?.conteudo;
  }

  @override
  int hash(ModelosRecord? e) => const ListEquality()
      .hash([e?.codigo, e?.descricao, e?.assunto, e?.conteudo]);

  @override
  bool isValidKey(Object? o) => o is ModelosRecord;
}
