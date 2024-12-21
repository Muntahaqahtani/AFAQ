import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LoyalityProgramRecord extends FirestoreRecord {
  LoyalityProgramRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "airlineName" field.
  DocumentReference? _airlineName;
  DocumentReference? get airlineName => _airlineName;
  bool hasAirlineName() => _airlineName != null;

  void _initializeFields() {
    _airlineName = snapshotData['airlineName'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('LoyalityProgram');

  static Stream<LoyalityProgramRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LoyalityProgramRecord.fromSnapshot(s));

  static Future<LoyalityProgramRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LoyalityProgramRecord.fromSnapshot(s));

  static LoyalityProgramRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LoyalityProgramRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LoyalityProgramRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LoyalityProgramRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LoyalityProgramRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LoyalityProgramRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLoyalityProgramRecordData({
  DocumentReference? airlineName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'airlineName': airlineName,
    }.withoutNulls,
  );

  return firestoreData;
}

class LoyalityProgramRecordDocumentEquality
    implements Equality<LoyalityProgramRecord> {
  const LoyalityProgramRecordDocumentEquality();

  @override
  bool equals(LoyalityProgramRecord? e1, LoyalityProgramRecord? e2) {
    return e1?.airlineName == e2?.airlineName;
  }

  @override
  int hash(LoyalityProgramRecord? e) =>
      const ListEquality().hash([e?.airlineName]);

  @override
  bool isValidKey(Object? o) => o is LoyalityProgramRecord;
}
