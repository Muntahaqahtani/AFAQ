import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class KingKhalidAirportRecord extends FirestoreRecord {
  KingKhalidAirportRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "airportID" field.
  String? _airportID;
  String get airportID => _airportID ?? '';
  bool hasAirportID() => _airportID != null;

  // "airportName" field.
  String? _airportName;
  String get airportName => _airportName ?? '';
  bool hasAirportName() => _airportName != null;

  // "FlightID" field.
  DocumentReference? _flightID;
  DocumentReference? get flightID => _flightID;
  bool hasFlightID() => _flightID != null;

  void _initializeFields() {
    _airportID = snapshotData['airportID'] as String?;
    _airportName = snapshotData['airportName'] as String?;
    _flightID = snapshotData['FlightID'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('KingKhalidAirport');

  static Stream<KingKhalidAirportRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => KingKhalidAirportRecord.fromSnapshot(s));

  static Future<KingKhalidAirportRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => KingKhalidAirportRecord.fromSnapshot(s));

  static KingKhalidAirportRecord fromSnapshot(DocumentSnapshot snapshot) =>
      KingKhalidAirportRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static KingKhalidAirportRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      KingKhalidAirportRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'KingKhalidAirportRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is KingKhalidAirportRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createKingKhalidAirportRecordData({
  String? airportID,
  String? airportName,
  DocumentReference? flightID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'airportID': airportID,
      'airportName': airportName,
      'FlightID': flightID,
    }.withoutNulls,
  );

  return firestoreData;
}

class KingKhalidAirportRecordDocumentEquality
    implements Equality<KingKhalidAirportRecord> {
  const KingKhalidAirportRecordDocumentEquality();

  @override
  bool equals(KingKhalidAirportRecord? e1, KingKhalidAirportRecord? e2) {
    return e1?.airportID == e2?.airportID &&
        e1?.airportName == e2?.airportName &&
        e1?.flightID == e2?.flightID;
  }

  @override
  int hash(KingKhalidAirportRecord? e) =>
      const ListEquality().hash([e?.airportID, e?.airportName, e?.flightID]);

  @override
  bool isValidKey(Object? o) => o is KingKhalidAirportRecord;
}
