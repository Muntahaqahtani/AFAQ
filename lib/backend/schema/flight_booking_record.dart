import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FlightBookingRecord extends FirestoreRecord {
  FlightBookingRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "accountID" field.
  DocumentReference? _accountID;
  DocumentReference? get accountID => _accountID;
  bool hasAccountID() => _accountID != null;

  // "bookingID" field.
  String? _bookingID;
  String get bookingID => _bookingID ?? '';
  bool hasBookingID() => _bookingID != null;

  // "NumbersOfPassengers" field.
  int? _numbersOfPassengers;
  int get numbersOfPassengers => _numbersOfPassengers ?? 0;
  bool hasNumbersOfPassengers() => _numbersOfPassengers != null;

  // "flightID" field.
  DocumentReference? _flightID;
  DocumentReference? get flightID => _flightID;
  bool hasFlightID() => _flightID != null;

  // "finalPrice" field.
  double? _finalPrice;
  double get finalPrice => _finalPrice ?? 0.0;
  bool hasFinalPrice() => _finalPrice != null;

  // "luggage" field.
  int? _luggage;
  int get luggage => _luggage ?? 0;
  bool hasLuggage() => _luggage != null;

  // "flightID_airportDSref" field.
  DocumentReference? _flightIDAirportDSref;
  DocumentReference? get flightIDAirportDSref => _flightIDAirportDSref;
  bool hasFlightIDAirportDSref() => _flightIDAirportDSref != null;

  // "CheckedBaggage" field.
  int? _checkedBaggage;
  int get checkedBaggage => _checkedBaggage ?? 0;
  bool hasCheckedBaggage() => _checkedBaggage != null;

  // "CabinBaggage" field.
  int? _cabinBaggage;
  int get cabinBaggage => _cabinBaggage ?? 0;
  bool hasCabinBaggage() => _cabinBaggage != null;

  // "FlightCancel" field.
  bool? _flightCancel;
  bool get flightCancel => _flightCancel ?? false;
  bool hasFlightCancel() => _flightCancel != null;

  // "DateBooked" field.
  DateTime? _dateBooked;
  DateTime? get dateBooked => _dateBooked;
  bool hasDateBooked() => _dateBooked != null;

  // "checkedIn" field.
  bool? _checkedIn;
  bool get checkedIn => _checkedIn ?? false;
  bool hasCheckedIn() => _checkedIn != null;

  // "seatType" field.
  String? _seatType;
  String get seatType => _seatType ?? '';
  bool hasSeatType() => _seatType != null;

  // "cabinTotalOfKilos" field.
  double? _cabinTotalOfKilos;
  double get cabinTotalOfKilos => _cabinTotalOfKilos ?? 0.0;
  bool hasCabinTotalOfKilos() => _cabinTotalOfKilos != null;

  // "checkedTotalOfKilos" field.
  double? _checkedTotalOfKilos;
  double get checkedTotalOfKilos => _checkedTotalOfKilos ?? 0.0;
  bool hasCheckedTotalOfKilos() => _checkedTotalOfKilos != null;

  // "seatID" field.
  DocumentReference? _seatID;
  DocumentReference? get seatID => _seatID;
  bool hasSeatID() => _seatID != null;

  // "cancelPrice" field.
  double? _cancelPrice;
  double get cancelPrice => _cancelPrice ?? 0.0;
  bool hasCancelPrice() => _cancelPrice != null;

  // "changePrice" field.
  double? _changePrice;
  double get changePrice => _changePrice ?? 0.0;
  bool hasChangePrice() => _changePrice != null;

  // "flightIDNumber" field.
  String? _flightIDNumber;
  String get flightIDNumber => _flightIDNumber ?? '';
  bool hasFlightIDNumber() => _flightIDNumber != null;

  void _initializeFields() {
    _accountID = snapshotData['accountID'] as DocumentReference?;
    _bookingID = snapshotData['bookingID'] as String?;
    _numbersOfPassengers = castToType<int>(snapshotData['NumbersOfPassengers']);
    _flightID = snapshotData['flightID'] as DocumentReference?;
    _finalPrice = castToType<double>(snapshotData['finalPrice']);
    _luggage = castToType<int>(snapshotData['luggage']);
    _flightIDAirportDSref =
        snapshotData['flightID_airportDSref'] as DocumentReference?;
    _checkedBaggage = castToType<int>(snapshotData['CheckedBaggage']);
    _cabinBaggage = castToType<int>(snapshotData['CabinBaggage']);
    _flightCancel = snapshotData['FlightCancel'] as bool?;
    _dateBooked = snapshotData['DateBooked'] as DateTime?;
    _checkedIn = snapshotData['checkedIn'] as bool?;
    _seatType = snapshotData['seatType'] as String?;
    _cabinTotalOfKilos = castToType<double>(snapshotData['cabinTotalOfKilos']);
    _checkedTotalOfKilos =
        castToType<double>(snapshotData['checkedTotalOfKilos']);
    _seatID = snapshotData['seatID'] as DocumentReference?;
    _cancelPrice = castToType<double>(snapshotData['cancelPrice']);
    _changePrice = castToType<double>(snapshotData['changePrice']);
    _flightIDNumber = snapshotData['flightIDNumber'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('FlightBooking');

  static Stream<FlightBookingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FlightBookingRecord.fromSnapshot(s));

  static Future<FlightBookingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FlightBookingRecord.fromSnapshot(s));

  static FlightBookingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FlightBookingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FlightBookingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FlightBookingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FlightBookingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FlightBookingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFlightBookingRecordData({
  DocumentReference? accountID,
  String? bookingID,
  int? numbersOfPassengers,
  DocumentReference? flightID,
  double? finalPrice,
  int? luggage,
  DocumentReference? flightIDAirportDSref,
  int? checkedBaggage,
  int? cabinBaggage,
  bool? flightCancel,
  DateTime? dateBooked,
  bool? checkedIn,
  String? seatType,
  double? cabinTotalOfKilos,
  double? checkedTotalOfKilos,
  DocumentReference? seatID,
  double? cancelPrice,
  double? changePrice,
  String? flightIDNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'accountID': accountID,
      'bookingID': bookingID,
      'NumbersOfPassengers': numbersOfPassengers,
      'flightID': flightID,
      'finalPrice': finalPrice,
      'luggage': luggage,
      'flightID_airportDSref': flightIDAirportDSref,
      'CheckedBaggage': checkedBaggage,
      'CabinBaggage': cabinBaggage,
      'FlightCancel': flightCancel,
      'DateBooked': dateBooked,
      'checkedIn': checkedIn,
      'seatType': seatType,
      'cabinTotalOfKilos': cabinTotalOfKilos,
      'checkedTotalOfKilos': checkedTotalOfKilos,
      'seatID': seatID,
      'cancelPrice': cancelPrice,
      'changePrice': changePrice,
      'flightIDNumber': flightIDNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class FlightBookingRecordDocumentEquality
    implements Equality<FlightBookingRecord> {
  const FlightBookingRecordDocumentEquality();

  @override
  bool equals(FlightBookingRecord? e1, FlightBookingRecord? e2) {
    return e1?.accountID == e2?.accountID &&
        e1?.bookingID == e2?.bookingID &&
        e1?.numbersOfPassengers == e2?.numbersOfPassengers &&
        e1?.flightID == e2?.flightID &&
        e1?.finalPrice == e2?.finalPrice &&
        e1?.luggage == e2?.luggage &&
        e1?.flightIDAirportDSref == e2?.flightIDAirportDSref &&
        e1?.checkedBaggage == e2?.checkedBaggage &&
        e1?.cabinBaggage == e2?.cabinBaggage &&
        e1?.flightCancel == e2?.flightCancel &&
        e1?.dateBooked == e2?.dateBooked &&
        e1?.checkedIn == e2?.checkedIn &&
        e1?.seatType == e2?.seatType &&
        e1?.cabinTotalOfKilos == e2?.cabinTotalOfKilos &&
        e1?.checkedTotalOfKilos == e2?.checkedTotalOfKilos &&
        e1?.seatID == e2?.seatID &&
        e1?.cancelPrice == e2?.cancelPrice &&
        e1?.changePrice == e2?.changePrice &&
        e1?.flightIDNumber == e2?.flightIDNumber;
  }

  @override
  int hash(FlightBookingRecord? e) => const ListEquality().hash([
        e?.accountID,
        e?.bookingID,
        e?.numbersOfPassengers,
        e?.flightID,
        e?.finalPrice,
        e?.luggage,
        e?.flightIDAirportDSref,
        e?.checkedBaggage,
        e?.cabinBaggage,
        e?.flightCancel,
        e?.dateBooked,
        e?.checkedIn,
        e?.seatType,
        e?.cabinTotalOfKilos,
        e?.checkedTotalOfKilos,
        e?.seatID,
        e?.cancelPrice,
        e?.changePrice,
        e?.flightIDNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is FlightBookingRecord;
}
