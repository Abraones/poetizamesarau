import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PoesiasInterpretarRecord extends FirestoreRecord {
  PoesiasInterpretarRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nomePoeta" field.
  String? _nomePoeta;
  String get nomePoeta => _nomePoeta ?? '';
  bool hasNomePoeta() => _nomePoeta != null;

  // "emailPoeta" field.
  String? _emailPoeta;
  String get emailPoeta => _emailPoeta ?? '';
  bool hasEmailPoeta() => _emailPoeta != null;

  // "celularPoeta" field.
  String? _celularPoeta;
  String get celularPoeta => _celularPoeta ?? '';
  bool hasCelularPoeta() => _celularPoeta != null;

  // "aceiteEmail" field.
  bool? _aceiteEmail;
  bool get aceiteEmail => _aceiteEmail ?? false;
  bool hasAceiteEmail() => _aceiteEmail != null;

  // "aceiteWpp" field.
  bool? _aceiteWpp;
  bool get aceiteWpp => _aceiteWpp ?? false;
  bool hasAceiteWpp() => _aceiteWpp != null;

  // "tituloPoesia" field.
  String? _tituloPoesia;
  String get tituloPoesia => _tituloPoesia ?? '';
  bool hasTituloPoesia() => _tituloPoesia != null;

  // "corpoPoesia" field.
  String? _corpoPoesia;
  String get corpoPoesia => _corpoPoesia ?? '';
  bool hasCorpoPoesia() => _corpoPoesia != null;

  // "diaRecitarTexto" field.
  String? _diaRecitarTexto;
  String get diaRecitarTexto => _diaRecitarTexto ?? '';
  bool hasDiaRecitarTexto() => _diaRecitarTexto != null;

  void _initializeFields() {
    _nomePoeta = snapshotData['nomePoeta'] as String?;
    _emailPoeta = snapshotData['emailPoeta'] as String?;
    _celularPoeta = snapshotData['celularPoeta'] as String?;
    _aceiteEmail = snapshotData['aceiteEmail'] as bool?;
    _aceiteWpp = snapshotData['aceiteWpp'] as bool?;
    _tituloPoesia = snapshotData['tituloPoesia'] as String?;
    _corpoPoesia = snapshotData['corpoPoesia'] as String?;
    _diaRecitarTexto = snapshotData['diaRecitarTexto'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('poesiasInterpretar');

  static Stream<PoesiasInterpretarRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PoesiasInterpretarRecord.fromSnapshot(s));

  static Future<PoesiasInterpretarRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => PoesiasInterpretarRecord.fromSnapshot(s));

  static PoesiasInterpretarRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PoesiasInterpretarRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PoesiasInterpretarRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PoesiasInterpretarRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PoesiasInterpretarRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PoesiasInterpretarRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPoesiasInterpretarRecordData({
  String? nomePoeta,
  String? emailPoeta,
  String? celularPoeta,
  bool? aceiteEmail,
  bool? aceiteWpp,
  String? tituloPoesia,
  String? corpoPoesia,
  String? diaRecitarTexto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomePoeta': nomePoeta,
      'emailPoeta': emailPoeta,
      'celularPoeta': celularPoeta,
      'aceiteEmail': aceiteEmail,
      'aceiteWpp': aceiteWpp,
      'tituloPoesia': tituloPoesia,
      'corpoPoesia': corpoPoesia,
      'diaRecitarTexto': diaRecitarTexto,
    }.withoutNulls,
  );

  return firestoreData;
}

class PoesiasInterpretarRecordDocumentEquality
    implements Equality<PoesiasInterpretarRecord> {
  const PoesiasInterpretarRecordDocumentEquality();

  @override
  bool equals(PoesiasInterpretarRecord? e1, PoesiasInterpretarRecord? e2) {
    return e1?.nomePoeta == e2?.nomePoeta &&
        e1?.emailPoeta == e2?.emailPoeta &&
        e1?.celularPoeta == e2?.celularPoeta &&
        e1?.aceiteEmail == e2?.aceiteEmail &&
        e1?.aceiteWpp == e2?.aceiteWpp &&
        e1?.tituloPoesia == e2?.tituloPoesia &&
        e1?.corpoPoesia == e2?.corpoPoesia &&
        e1?.diaRecitarTexto == e2?.diaRecitarTexto;
  }

  @override
  int hash(PoesiasInterpretarRecord? e) => const ListEquality().hash([
        e?.nomePoeta,
        e?.emailPoeta,
        e?.celularPoeta,
        e?.aceiteEmail,
        e?.aceiteWpp,
        e?.tituloPoesia,
        e?.corpoPoesia,
        e?.diaRecitarTexto
      ]);

  @override
  bool isValidKey(Object? o) => o is PoesiasInterpretarRecord;
}
