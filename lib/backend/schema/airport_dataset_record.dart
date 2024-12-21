import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AirportDatasetRecord extends FirestoreRecord {
  AirportDatasetRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "FlightID" field.
  String? _flightID;
  String get flightID => _flightID ?? '';
  bool hasFlightID() => _flightID != null;

  // "AirlineImage" field.
  String? _airlineImage;
  String get airlineImage => _airlineImage ?? '';
  bool hasAirlineImage() => _airlineImage != null;

  // "AirlineID" field.
  String? _airlineID;
  String get airlineID => _airlineID ?? '';
  bool hasAirlineID() => _airlineID != null;

  // "WayType" field.
  String? _wayType;
  String get wayType => _wayType ?? '';
  bool hasWayType() => _wayType != null;

  // "FlightStatus" field.
  String? _flightStatus;
  String get flightStatus => _flightStatus ?? '';
  bool hasFlightStatus() => _flightStatus != null;

  // "OriginAirportID" field.
  String? _originAirportID;
  String get originAirportID => _originAirportID ?? '';
  bool hasOriginAirportID() => _originAirportID != null;

  // "OriginAirport" field.
  String? _originAirport;
  String get originAirport => _originAirport ?? '';
  bool hasOriginAirport() => _originAirport != null;

  // "OriginCountry" field.
  String? _originCountry;
  String get originCountry => _originCountry ?? '';
  bool hasOriginCountry() => _originCountry != null;

  // "OriginTeriminal" field.
  int? _originTeriminal;
  int get originTeriminal => _originTeriminal ?? 0;
  bool hasOriginTeriminal() => _originTeriminal != null;

  // "DepartureDate" field.
  DateTime? _departureDate;
  DateTime? get departureDate => _departureDate;
  bool hasDepartureDate() => _departureDate != null;

  // "DepartureTime" field.
  DateTime? _departureTime;
  DateTime? get departureTime => _departureTime;
  bool hasDepartureTime() => _departureTime != null;

  // "DestinationAirportID" field.
  String? _destinationAirportID;
  String get destinationAirportID => _destinationAirportID ?? '';
  bool hasDestinationAirportID() => _destinationAirportID != null;

  // "DestinationAirport" field.
  String? _destinationAirport;
  String get destinationAirport => _destinationAirport ?? '';
  bool hasDestinationAirport() => _destinationAirport != null;

  // "DestinationCountry" field.
  String? _destinationCountry;
  String get destinationCountry => _destinationCountry ?? '';
  bool hasDestinationCountry() => _destinationCountry != null;

  // "ArrivalDate" field.
  DateTime? _arrivalDate;
  DateTime? get arrivalDate => _arrivalDate;
  bool hasArrivalDate() => _arrivalDate != null;

  // "ArrivalTime" field.
  DateTime? _arrivalTime;
  DateTime? get arrivalTime => _arrivalTime;
  bool hasArrivalTime() => _arrivalTime != null;

  // "GateName" field.
  String? _gateName;
  String get gateName => _gateName ?? '';
  bool hasGateName() => _gateName != null;

  // "GateOpen" field.
  DateTime? _gateOpen;
  DateTime? get gateOpen => _gateOpen;
  bool hasGateOpen() => _gateOpen != null;

  // "GateClose" field.
  DateTime? _gateClose;
  DateTime? get gateClose => _gateClose;
  bool hasGateClose() => _gateClose != null;

  // "BoardingTime" field.
  DateTime? _boardingTime;
  DateTime? get boardingTime => _boardingTime;
  bool hasBoardingTime() => _boardingTime != null;

  // "FlightDuration" field.
  String? _flightDuration;
  String get flightDuration => _flightDuration ?? '';
  bool hasFlightDuration() => _flightDuration != null;

  // "Airline" field.
  String? _airline;
  String get airline => _airline ?? '';
  bool hasAirline() => _airline != null;

  void _initializeFields() {
    _flightID = snapshotData['FlightID'] as String?;
    _airlineImage = snapshotData['AirlineImage'] as String?;
    _airlineID = snapshotData['AirlineID'] as String?;
    _wayType = snapshotData['WayType'] as String?;
    _flightStatus = snapshotData['FlightStatus'] as String?;
    _originAirportID = snapshotData['OriginAirportID'] as String?;
    _originAirport = snapshotData['OriginAirport'] as String?;
    _originCountry = snapshotData['OriginCountry'] as String?;
    _originTeriminal = castToType<int>(snapshotData['OriginTeriminal']);
    _departureDate = snapshotData['DepartureDate'] as DateTime?;
    _departureTime = snapshotData['DepartureTime'] as DateTime?;
    _destinationAirportID = snapshotData['DestinationAirportID'] as String?;
    _destinationAirport = snapshotData['DestinationAirport'] as String?;
    _destinationCountry = snapshotData['DestinationCountry'] as String?;
    _arrivalDate = snapshotData['ArrivalDate'] as DateTime?;
    _arrivalTime = snapshotData['ArrivalTime'] as DateTime?;
    _gateName = snapshotData['GateName'] as String?;
    _gateOpen = snapshotData['GateOpen'] as DateTime?;
    _gateClose = snapshotData['GateClose'] as DateTime?;
    _boardingTime = snapshotData['BoardingTime'] as DateTime?;
    _flightDuration = snapshotData['FlightDuration'] as String?;
    _airline = snapshotData['Airline'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Airport_Dataset');

  static Stream<AirportDatasetRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AirportDatasetRecord.fromSnapshot(s));

  static Future<AirportDatasetRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AirportDatasetRecord.fromSnapshot(s));

  static AirportDatasetRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AirportDatasetRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AirportDatasetRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AirportDatasetRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AirportDatasetRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AirportDatasetRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAirportDatasetRecordData({
  String? flightID,
  String? airlineImage,
  String? airlineID,
  String? wayType,
  String? flightStatus,
  String? originAirportID,
  String? originAirport,
  String? originCountry,
  int? originTeriminal,
  DateTime? departureDate,
  DateTime? departureTime,
  String? destinationAirportID,
  String? destinationAirport,
  String? destinationCountry,
  DateTime? arrivalDate,
  DateTime? arrivalTime,
  String? gateName,
  DateTime? gateOpen,
  DateTime? gateClose,
  DateTime? boardingTime,
  String? flightDuration,
  String? airline,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'FlightID': flightID,
      'AirlineImage': airlineImage,
      'AirlineID': airlineID,
      'WayType': wayType,
      'FlightStatus': flightStatus,
      'OriginAirportID': originAirportID,
      'OriginAirport': originAirport,
      'OriginCountry': originCountry,
      'OriginTeriminal': originTeriminal,
      'DepartureDate': departureDate,
      'DepartureTime': departureTime,
      'DestinationAirportID': destinationAirportID,
      'DestinationAirport': destinationAirport,
      'DestinationCountry': destinationCountry,
      'ArrivalDate': arrivalDate,
      'ArrivalTime': arrivalTime,
      'GateName': gateName,
      'GateOpen': gateOpen,
      'GateClose': gateClose,
      'BoardingTime': boardingTime,
      'FlightDuration': flightDuration,
      'Airline': airline,
    }.withoutNulls,
  );

  return firestoreData;
}

class AirportDatasetRecordDocumentEquality
    implements Equality<AirportDatasetRecord> {
  const AirportDatasetRecordDocumentEquality();

  @override
  bool equals(AirportDatasetRecord? e1, AirportDatasetRecord? e2) {
    return e1?.flightID == e2?.flightID &&
        e1?.airlineImage == e2?.airlineImage &&
        e1?.airlineID == e2?.airlineID &&
        e1?.wayType == e2?.wayType &&
        e1?.flightStatus == e2?.flightStatus &&
        e1?.originAirportID == e2?.originAirportID &&
        e1?.originAirport == e2?.originAirport &&
        e1?.originCountry == e2?.originCountry &&
        e1?.originTeriminal == e2?.originTeriminal &&
        e1?.departureDate == e2?.departureDate &&
        e1?.departureTime == e2?.departureTime &&
        e1?.destinationAirportID == e2?.destinationAirportID &&
        e1?.destinationAirport == e2?.destinationAirport &&
        e1?.destinationCountry == e2?.destinationCountry &&
        e1?.arrivalDate == e2?.arrivalDate &&
        e1?.arrivalTime == e2?.arrivalTime &&
        e1?.gateName == e2?.gateName &&
        e1?.gateOpen == e2?.gateOpen &&
        e1?.gateClose == e2?.gateClose &&
        e1?.boardingTime == e2?.boardingTime &&
        e1?.flightDuration == e2?.flightDuration &&
        e1?.airline == e2?.airline;
  }

  @override
  int hash(AirportDatasetRecord? e) => const ListEquality().hash([
        e?.flightID,
        e?.airlineImage,
        e?.airlineID,
        e?.wayType,
        e?.flightStatus,
        e?.originAirportID,
        e?.originAirport,
        e?.originCountry,
        e?.originTeriminal,
        e?.departureDate,
        e?.departureTime,
        e?.destinationAirportID,
        e?.destinationAirport,
        e?.destinationCountry,
        e?.arrivalDate,
        e?.arrivalTime,
        e?.gateName,
        e?.gateOpen,
        e?.gateClose,
        e?.boardingTime,
        e?.flightDuration,
        e?.airline
      ]);

  @override
  bool isValidKey(Object? o) => o is AirportDatasetRecord;
}
