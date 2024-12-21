import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServicesRecord extends FirestoreRecord {
  ServicesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "serviceID" field.
  String? _serviceID;
  String get serviceID => _serviceID ?? '';
  bool hasServiceID() => _serviceID != null;

  // "airportID" field.
  DocumentReference? _airportID;
  DocumentReference? get airportID => _airportID;
  bool hasAirportID() => _airportID != null;

  // "serviceRef" field.
  DocumentReference? _serviceRef;
  DocumentReference? get serviceRef => _serviceRef;
  bool hasServiceRef() => _serviceRef != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _serviceID = snapshotData['serviceID'] as String?;
    _airportID = snapshotData['airportID'] as DocumentReference?;
    _serviceRef = snapshotData['serviceRef'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Services')
          : FirebaseFirestore.instance.collectionGroup('Services');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Services').doc(id);

  static Stream<ServicesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ServicesRecord.fromSnapshot(s));

  static Future<ServicesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ServicesRecord.fromSnapshot(s));

  static ServicesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ServicesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ServicesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ServicesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ServicesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ServicesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createServicesRecordData({
  String? serviceID,
  DocumentReference? airportID,
  DocumentReference? serviceRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'serviceID': serviceID,
      'airportID': airportID,
      'serviceRef': serviceRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class ServicesRecordDocumentEquality implements Equality<ServicesRecord> {
  const ServicesRecordDocumentEquality();

  @override
  bool equals(ServicesRecord? e1, ServicesRecord? e2) {
    return e1?.serviceID == e2?.serviceID &&
        e1?.airportID == e2?.airportID &&
        e1?.serviceRef == e2?.serviceRef;
  }

  @override
  int hash(ServicesRecord? e) =>
      const ListEquality().hash([e?.serviceID, e?.airportID, e?.serviceRef]);

  @override
  bool isValidKey(Object? o) => o is ServicesRecord;
}
