import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AirlineRecord extends FirestoreRecord {
  AirlineRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "airlineID" field.
  String? _airlineID;
  String get airlineID => _airlineID ?? '';
  bool hasAirlineID() => _airlineID != null;

  // "airlineName" field.
  String? _airlineName;
  String get airlineName => _airlineName ?? '';
  bool hasAirlineName() => _airlineName != null;

  // "FlightID" field.
  DocumentReference? _flightID;
  DocumentReference? get flightID => _flightID;
  bool hasFlightID() => _flightID != null;

  void _initializeFields() {
    _airlineID = snapshotData['airlineID'] as String?;
    _airlineName = snapshotData['airlineName'] as String?;
    _flightID = snapshotData['FlightID'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Airline');

  static Stream<AirlineRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AirlineRecord.fromSnapshot(s));

  static Future<AirlineRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AirlineRecord.fromSnapshot(s));

  static AirlineRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AirlineRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AirlineRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AirlineRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AirlineRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AirlineRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAirlineRecordData({
  String? airlineID,
  String? airlineName,
  DocumentReference? flightID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'airlineID': airlineID,
      'airlineName': airlineName,
      'FlightID': flightID,
    }.withoutNulls,
  );

  return firestoreData;
}

class AirlineRecordDocumentEquality implements Equality<AirlineRecord> {
  const AirlineRecordDocumentEquality();

  @override
  bool equals(AirlineRecord? e1, AirlineRecord? e2) {
    return e1?.airlineID == e2?.airlineID &&
        e1?.airlineName == e2?.airlineName &&
        e1?.flightID == e2?.flightID;
  }

  @override
  int hash(AirlineRecord? e) =>
      const ListEquality().hash([e?.airlineID, e?.airlineName, e?.flightID]);

  @override
  bool isValidKey(Object? o) => o is AirlineRecord;
}
