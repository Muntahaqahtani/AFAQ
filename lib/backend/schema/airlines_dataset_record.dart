import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AirlinesDatasetRecord extends FirestoreRecord {
  AirlinesDatasetRecord._(
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

  // "AircraftModel" field.
  String? _aircraftModel;
  String get aircraftModel => _aircraftModel ?? '';
  bool hasAircraftModel() => _aircraftModel != null;

  // "EcoPrice" field.
  double? _ecoPrice;
  double get ecoPrice => _ecoPrice ?? 0.0;
  bool hasEcoPrice() => _ecoPrice != null;

  // "BuisnessPrice" field.
  double? _buisnessPrice;
  double get buisnessPrice => _buisnessPrice ?? 0.0;
  bool hasBuisnessPrice() => _buisnessPrice != null;

  // "FirstPrice" field.
  double? _firstPrice;
  double get firstPrice => _firstPrice ?? 0.0;
  bool hasFirstPrice() => _firstPrice != null;

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

  // "FlightChange" field.
  double? _flightChange;
  double get flightChange => _flightChange ?? 0.0;
  bool hasFlightChange() => _flightChange != null;

  // "ecoCapacity" field.
  int? _ecoCapacity;
  int get ecoCapacity => _ecoCapacity ?? 0;
  bool hasEcoCapacity() => _ecoCapacity != null;

  // "businessCapacity" field.
  int? _businessCapacity;
  int get businessCapacity => _businessCapacity ?? 0;
  bool hasBusinessCapacity() => _businessCapacity != null;

  // "FirstCapacity" field.
  int? _firstCapacity;
  int get firstCapacity => _firstCapacity ?? 0;
  bool hasFirstCapacity() => _firstCapacity != null;

  // "FlightCapacity" field.
  int? _flightCapacity;
  int get flightCapacity => _flightCapacity ?? 0;
  bool hasFlightCapacity() => _flightCapacity != null;

  // "FlightDuration" field.
  String? _flightDuration;
  String get flightDuration => _flightDuration ?? '';
  bool hasFlightDuration() => _flightDuration != null;

  // "CheckedBaggage" field.
  int? _checkedBaggage;
  int get checkedBaggage => _checkedBaggage ?? 0;
  bool hasCheckedBaggage() => _checkedBaggage != null;

  // "CabinBaggage" field.
  int? _cabinBaggage;
  int get cabinBaggage => _cabinBaggage ?? 0;
  bool hasCabinBaggage() => _cabinBaggage != null;

  // "Airline" field.
  String? _airline;
  String get airline => _airline ?? '';
  bool hasAirline() => _airline != null;

  // "FlightCnacel" field.
  int? _flightCnacel;
  int get flightCnacel => _flightCnacel ?? 0;
  bool hasFlightCnacel() => _flightCnacel != null;

  void _initializeFields() {
    _flightID = snapshotData['FlightID'] as String?;
    _airlineImage = snapshotData['AirlineImage'] as String?;
    _airlineID = snapshotData['AirlineID'] as String?;
    _aircraftModel = snapshotData['AircraftModel'] as String?;
    _ecoPrice = castToType<double>(snapshotData['EcoPrice']);
    _buisnessPrice = castToType<double>(snapshotData['BuisnessPrice']);
    _firstPrice = castToType<double>(snapshotData['FirstPrice']);
    _wayType = snapshotData['WayType'] as String?;
    _flightStatus = snapshotData['FlightStatus'] as String?;
    _originAirportID = snapshotData['OriginAirportID'] as String?;
    _originAirport = snapshotData['OriginAirport'] as String?;
    _originCountry = snapshotData['OriginCountry'] as String?;
    _departureDate = snapshotData['DepartureDate'] as DateTime?;
    _departureTime = snapshotData['DepartureTime'] as DateTime?;
    _destinationAirportID = snapshotData['DestinationAirportID'] as String?;
    _destinationAirport = snapshotData['DestinationAirport'] as String?;
    _destinationCountry = snapshotData['DestinationCountry'] as String?;
    _arrivalDate = snapshotData['ArrivalDate'] as DateTime?;
    _arrivalTime = snapshotData['ArrivalTime'] as DateTime?;
    _flightChange = castToType<double>(snapshotData['FlightChange']);
    _ecoCapacity = castToType<int>(snapshotData['ecoCapacity']);
    _businessCapacity = castToType<int>(snapshotData['businessCapacity']);
    _firstCapacity = castToType<int>(snapshotData['FirstCapacity']);
    _flightCapacity = castToType<int>(snapshotData['FlightCapacity']);
    _flightDuration = snapshotData['FlightDuration'] as String?;
    _checkedBaggage = castToType<int>(snapshotData['CheckedBaggage']);
    _cabinBaggage = castToType<int>(snapshotData['CabinBaggage']);
    _airline = snapshotData['Airline'] as String?;
    _flightCnacel = castToType<int>(snapshotData['FlightCnacel']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Airlines_Dataset');

  static Stream<AirlinesDatasetRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AirlinesDatasetRecord.fromSnapshot(s));

  static Future<AirlinesDatasetRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AirlinesDatasetRecord.fromSnapshot(s));

  static AirlinesDatasetRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AirlinesDatasetRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AirlinesDatasetRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AirlinesDatasetRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AirlinesDatasetRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AirlinesDatasetRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAirlinesDatasetRecordData({
  String? flightID,
  String? airlineImage,
  String? airlineID,
  String? aircraftModel,
  double? ecoPrice,
  double? buisnessPrice,
  double? firstPrice,
  String? wayType,
  String? flightStatus,
  String? originAirportID,
  String? originAirport,
  String? originCountry,
  DateTime? departureDate,
  DateTime? departureTime,
  String? destinationAirportID,
  String? destinationAirport,
  String? destinationCountry,
  DateTime? arrivalDate,
  DateTime? arrivalTime,
  double? flightChange,
  int? ecoCapacity,
  int? businessCapacity,
  int? firstCapacity,
  int? flightCapacity,
  String? flightDuration,
  int? checkedBaggage,
  int? cabinBaggage,
  String? airline,
  int? flightCnacel,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'FlightID': flightID,
      'AirlineImage': airlineImage,
      'AirlineID': airlineID,
      'AircraftModel': aircraftModel,
      'EcoPrice': ecoPrice,
      'BuisnessPrice': buisnessPrice,
      'FirstPrice': firstPrice,
      'WayType': wayType,
      'FlightStatus': flightStatus,
      'OriginAirportID': originAirportID,
      'OriginAirport': originAirport,
      'OriginCountry': originCountry,
      'DepartureDate': departureDate,
      'DepartureTime': departureTime,
      'DestinationAirportID': destinationAirportID,
      'DestinationAirport': destinationAirport,
      'DestinationCountry': destinationCountry,
      'ArrivalDate': arrivalDate,
      'ArrivalTime': arrivalTime,
      'FlightChange': flightChange,
      'ecoCapacity': ecoCapacity,
      'businessCapacity': businessCapacity,
      'FirstCapacity': firstCapacity,
      'FlightCapacity': flightCapacity,
      'FlightDuration': flightDuration,
      'CheckedBaggage': checkedBaggage,
      'CabinBaggage': cabinBaggage,
      'Airline': airline,
      'FlightCnacel': flightCnacel,
    }.withoutNulls,
  );

  return firestoreData;
}

class AirlinesDatasetRecordDocumentEquality
    implements Equality<AirlinesDatasetRecord> {
  const AirlinesDatasetRecordDocumentEquality();

  @override
  bool equals(AirlinesDatasetRecord? e1, AirlinesDatasetRecord? e2) {
    return e1?.flightID == e2?.flightID &&
        e1?.airlineImage == e2?.airlineImage &&
        e1?.airlineID == e2?.airlineID &&
        e1?.aircraftModel == e2?.aircraftModel &&
        e1?.ecoPrice == e2?.ecoPrice &&
        e1?.buisnessPrice == e2?.buisnessPrice &&
        e1?.firstPrice == e2?.firstPrice &&
        e1?.wayType == e2?.wayType &&
        e1?.flightStatus == e2?.flightStatus &&
        e1?.originAirportID == e2?.originAirportID &&
        e1?.originAirport == e2?.originAirport &&
        e1?.originCountry == e2?.originCountry &&
        e1?.departureDate == e2?.departureDate &&
        e1?.departureTime == e2?.departureTime &&
        e1?.destinationAirportID == e2?.destinationAirportID &&
        e1?.destinationAirport == e2?.destinationAirport &&
        e1?.destinationCountry == e2?.destinationCountry &&
        e1?.arrivalDate == e2?.arrivalDate &&
        e1?.arrivalTime == e2?.arrivalTime &&
        e1?.flightChange == e2?.flightChange &&
        e1?.ecoCapacity == e2?.ecoCapacity &&
        e1?.businessCapacity == e2?.businessCapacity &&
        e1?.firstCapacity == e2?.firstCapacity &&
        e1?.flightCapacity == e2?.flightCapacity &&
        e1?.flightDuration == e2?.flightDuration &&
        e1?.checkedBaggage == e2?.checkedBaggage &&
        e1?.cabinBaggage == e2?.cabinBaggage &&
        e1?.airline == e2?.airline &&
        e1?.flightCnacel == e2?.flightCnacel;
  }

  @override
  int hash(AirlinesDatasetRecord? e) => const ListEquality().hash([
        e?.flightID,
        e?.airlineImage,
        e?.airlineID,
        e?.aircraftModel,
        e?.ecoPrice,
        e?.buisnessPrice,
        e?.firstPrice,
        e?.wayType,
        e?.flightStatus,
        e?.originAirportID,
        e?.originAirport,
        e?.originCountry,
        e?.departureDate,
        e?.departureTime,
        e?.destinationAirportID,
        e?.destinationAirport,
        e?.destinationCountry,
        e?.arrivalDate,
        e?.arrivalTime,
        e?.flightChange,
        e?.ecoCapacity,
        e?.businessCapacity,
        e?.firstCapacity,
        e?.flightCapacity,
        e?.flightDuration,
        e?.checkedBaggage,
        e?.cabinBaggage,
        e?.airline,
        e?.flightCnacel
      ]);

  @override
  bool isValidKey(Object? o) => o is AirlinesDatasetRecord;
}
