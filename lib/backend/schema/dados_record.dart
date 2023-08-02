import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DadosRecord extends FirestoreRecord {
  DadosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  bool hasImg() => _img != null;

  // "produto" field.
  String? _produto;
  String get produto => _produto ?? '';
  bool hasProduto() => _produto != null;

  // "info" field.
  String? _info;
  String get info => _info ?? '';
  bool hasInfo() => _info != null;

  // "webpage" field.
  String? _webpage;
  String get webpage => _webpage ?? '';
  bool hasWebpage() => _webpage != null;

  // "preco" field.
  String? _preco;
  String get preco => _preco ?? '';
  bool hasPreco() => _preco != null;

  void _initializeFields() {
    _img = snapshotData['img'] as String?;
    _produto = snapshotData['produto'] as String?;
    _info = snapshotData['info'] as String?;
    _webpage = snapshotData['webpage'] as String?;
    _preco = snapshotData['preco'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('dados');

  static Stream<DadosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DadosRecord.fromSnapshot(s));

  static Future<DadosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DadosRecord.fromSnapshot(s));

  static DadosRecord fromSnapshot(DocumentSnapshot snapshot) => DadosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DadosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DadosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DadosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DadosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDadosRecordData({
  String? img,
  String? produto,
  String? info,
  String? webpage,
  String? preco,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'img': img,
      'produto': produto,
      'info': info,
      'webpage': webpage,
      'preco': preco,
    }.withoutNulls,
  );

  return firestoreData;
}

class DadosRecordDocumentEquality implements Equality<DadosRecord> {
  const DadosRecordDocumentEquality();

  @override
  bool equals(DadosRecord? e1, DadosRecord? e2) {
    return e1?.img == e2?.img &&
        e1?.produto == e2?.produto &&
        e1?.info == e2?.info &&
        e1?.webpage == e2?.webpage &&
        e1?.preco == e2?.preco;
  }

  @override
  int hash(DadosRecord? e) => const ListEquality()
      .hash([e?.img, e?.produto, e?.info, e?.webpage, e?.preco]);

  @override
  bool isValidKey(Object? o) => o is DadosRecord;
}
