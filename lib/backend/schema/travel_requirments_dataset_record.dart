import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TravelRequirmentsDatasetRecord extends FirestoreRecord {
  TravelRequirmentsDatasetRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Nationality" field.
  String? _nationality;
  String get nationality => _nationality ?? '';
  bool hasNationality() => _nationality != null;

  // "OrginCountry" field.
  String? _orginCountry;
  String get orginCountry => _orginCountry ?? '';
  bool hasOrginCountry() => _orginCountry != null;

  // "DestinationCountry" field.
  String? _destinationCountry;
  String get destinationCountry => _destinationCountry ?? '';
  bool hasDestinationCountry() => _destinationCountry != null;

  // "VisaType" field.
  String? _visaType;
  String get visaType => _visaType ?? '';
  bool hasVisaType() => _visaType != null;

  // "VisaRequired" field.
  bool? _visaRequired;
  bool get visaRequired => _visaRequired ?? false;
  bool hasVisaRequired() => _visaRequired != null;

  // "PassportRequired" field.
  bool? _passportRequired;
  bool get passportRequired => _passportRequired ?? false;
  bool hasPassportRequired() => _passportRequired != null;

  // "MedicalIncurance" field.
  bool? _medicalIncurance;
  bool get medicalIncurance => _medicalIncurance ?? false;
  bool hasMedicalIncurance() => _medicalIncurance != null;

  void _initializeFields() {
    _nationality = snapshotData['Nationality'] as String?;
    _orginCountry = snapshotData['OrginCountry'] as String?;
    _destinationCountry = snapshotData['DestinationCountry'] as String?;
    _visaType = snapshotData['VisaType'] as String?;
    _visaRequired = snapshotData['VisaRequired'] as bool?;
    _passportRequired = snapshotData['PassportRequired'] as bool?;
    _medicalIncurance = snapshotData['MedicalIncurance'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('TravelRequirments_Dataset');

  static Stream<TravelRequirmentsDatasetRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => TravelRequirmentsDatasetRecord.fromSnapshot(s));

  static Future<TravelRequirmentsDatasetRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => TravelRequirmentsDatasetRecord.fromSnapshot(s));

  static TravelRequirmentsDatasetRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      TravelRequirmentsDatasetRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TravelRequirmentsDatasetRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TravelRequirmentsDatasetRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TravelRequirmentsDatasetRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TravelRequirmentsDatasetRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTravelRequirmentsDatasetRecordData({
  String? nationality,
  String? orginCountry,
  String? destinationCountry,
  String? visaType,
  bool? visaRequired,
  bool? passportRequired,
  bool? medicalIncurance,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nationality': nationality,
      'OrginCountry': orginCountry,
      'DestinationCountry': destinationCountry,
      'VisaType': visaType,
      'VisaRequired': visaRequired,
      'PassportRequired': passportRequired,
      'MedicalIncurance': medicalIncurance,
    }.withoutNulls,
  );

  return firestoreData;
}

class TravelRequirmentsDatasetRecordDocumentEquality
    implements Equality<TravelRequirmentsDatasetRecord> {
  const TravelRequirmentsDatasetRecordDocumentEquality();

  @override
  bool equals(
      TravelRequirmentsDatasetRecord? e1, TravelRequirmentsDatasetRecord? e2) {
    return e1?.nationality == e2?.nationality &&
        e1?.orginCountry == e2?.orginCountry &&
        e1?.destinationCountry == e2?.destinationCountry &&
        e1?.visaType == e2?.visaType &&
        e1?.visaRequired == e2?.visaRequired &&
        e1?.passportRequired == e2?.passportRequired &&
        e1?.medicalIncurance == e2?.medicalIncurance;
  }

  @override
  int hash(TravelRequirmentsDatasetRecord? e) => const ListEquality().hash([
        e?.nationality,
        e?.orginCountry,
        e?.destinationCountry,
        e?.visaType,
        e?.visaRequired,
        e?.passportRequired,
        e?.medicalIncurance
      ]);

  @override
  bool isValidKey(Object? o) => o is TravelRequirmentsDatasetRecord;
}
