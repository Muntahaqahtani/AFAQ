import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SeatRecord extends FirestoreRecord {
  SeatRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "seatID" field.
  String? _seatID;
  String get seatID => _seatID ?? '';
  bool hasSeatID() => _seatID != null;

  // "boardingID" field.
  String? _boardingID;
  String get boardingID => _boardingID ?? '';
  bool hasBoardingID() => _boardingID != null;

  // "seatType" field.
  String? _seatType;
  String get seatType => _seatType ?? '';
  bool hasSeatType() => _seatType != null;

  // "flightBookingRef" field.
  DocumentReference? _flightBookingRef;
  DocumentReference? get flightBookingRef => _flightBookingRef;
  bool hasFlightBookingRef() => _flightBookingRef != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _seatID = snapshotData['seatID'] as String?;
    _boardingID = snapshotData['boardingID'] as String?;
    _seatType = snapshotData['seatType'] as String?;
    _flightBookingRef = snapshotData['flightBookingRef'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Seat')
          : FirebaseFirestore.instance.collectionGroup('Seat');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Seat').doc(id);

  static Stream<SeatRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SeatRecord.fromSnapshot(s));

  static Future<SeatRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SeatRecord.fromSnapshot(s));

  static SeatRecord fromSnapshot(DocumentSnapshot snapshot) => SeatRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SeatRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SeatRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SeatRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SeatRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSeatRecordData({
  String? seatID,
  String? boardingID,
  String? seatType,
  DocumentReference? flightBookingRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'seatID': seatID,
      'boardingID': boardingID,
      'seatType': seatType,
      'flightBookingRef': flightBookingRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class SeatRecordDocumentEquality implements Equality<SeatRecord> {
  const SeatRecordDocumentEquality();

  @override
  bool equals(SeatRecord? e1, SeatRecord? e2) {
    return e1?.seatID == e2?.seatID &&
        e1?.boardingID == e2?.boardingID &&
        e1?.seatType == e2?.seatType &&
        e1?.flightBookingRef == e2?.flightBookingRef;
  }

  @override
  int hash(SeatRecord? e) => const ListEquality()
      .hash([e?.seatID, e?.boardingID, e?.seatType, e?.flightBookingRef]);

  @override
  bool isValidKey(Object? o) => o is SeatRecord;
}
