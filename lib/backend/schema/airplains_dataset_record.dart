import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AirplainsDatasetRecord extends FirestoreRecord {
  AirplainsDatasetRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "AircraftModel" field.
  String? _aircraftModel;
  String get aircraftModel => _aircraftModel ?? '';
  bool hasAircraftModel() => _aircraftModel != null;

  // "Seat" field.
  String? _seat;
  String get seat => _seat ?? '';
  bool hasSeat() => _seat != null;

  // "Status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "FlightID" field.
  String? _flightID;
  String get flightID => _flightID ?? '';
  bool hasFlightID() => _flightID != null;

  // "flightIDref" field.
  DocumentReference? _flightIDref;
  DocumentReference? get flightIDref => _flightIDref;
  bool hasFlightIDref() => _flightIDref != null;

  // "typeSeat" field.
  String? _typeSeat;
  String get typeSeat => _typeSeat ?? '';
  bool hasTypeSeat() => _typeSeat != null;

  void _initializeFields() {
    _aircraftModel = snapshotData['AircraftModel'] as String?;
    _seat = snapshotData['Seat'] as String?;
    _status = snapshotData['Status'] as String?;
    _flightID = snapshotData['FlightID'] as String?;
    _flightIDref = snapshotData['flightIDref'] as DocumentReference?;
    _typeSeat = snapshotData['typeSeat'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Airplains_Dataset');

  static Stream<AirplainsDatasetRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AirplainsDatasetRecord.fromSnapshot(s));

  static Future<AirplainsDatasetRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => AirplainsDatasetRecord.fromSnapshot(s));

  static AirplainsDatasetRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AirplainsDatasetRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AirplainsDatasetRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AirplainsDatasetRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AirplainsDatasetRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AirplainsDatasetRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAirplainsDatasetRecordData({
  String? aircraftModel,
  String? seat,
  String? status,
  String? flightID,
  DocumentReference? flightIDref,
  String? typeSeat,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'AircraftModel': aircraftModel,
      'Seat': seat,
      'Status': status,
      'FlightID': flightID,
      'flightIDref': flightIDref,
      'typeSeat': typeSeat,
    }.withoutNulls,
  );

  return firestoreData;
}

class AirplainsDatasetRecordDocumentEquality
    implements Equality<AirplainsDatasetRecord> {
  const AirplainsDatasetRecordDocumentEquality();

  @override
  bool equals(AirplainsDatasetRecord? e1, AirplainsDatasetRecord? e2) {
    return e1?.aircraftModel == e2?.aircraftModel &&
        e1?.seat == e2?.seat &&
        e1?.status == e2?.status &&
        e1?.flightID == e2?.flightID &&
        e1?.flightIDref == e2?.flightIDref &&
        e1?.typeSeat == e2?.typeSeat;
  }

  @override
  int hash(AirplainsDatasetRecord? e) => const ListEquality().hash([
        e?.aircraftModel,
        e?.seat,
        e?.status,
        e?.flightID,
        e?.flightIDref,
        e?.typeSeat
      ]);

  @override
  bool isValidKey(Object? o) => o is AirplainsDatasetRecord;
}
