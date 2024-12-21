import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TravelRequirmentsRecord extends FirestoreRecord {
  TravelRequirmentsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "docsIndex" field.
  String? _docsIndex;
  String get docsIndex => _docsIndex ?? '';
  bool hasDocsIndex() => _docsIndex != null;

  // "origin" field.
  String? _origin;
  String get origin => _origin ?? '';
  bool hasOrigin() => _origin != null;

  // "destination" field.
  String? _destination;
  String get destination => _destination ?? '';
  bool hasDestination() => _destination != null;

  // "nationality" field.
  String? _nationality;
  String get nationality => _nationality ?? '';
  bool hasNationality() => _nationality != null;

  // "visaType" field.
  VisaType? _visaType;
  VisaType? get visaType => _visaType;
  bool hasVisaType() => _visaType != null;

  // "visa" field.
  bool? _visa;
  bool get visa => _visa ?? false;
  bool hasVisa() => _visa != null;

  // "medicalInsurance" field.
  bool? _medicalInsurance;
  bool get medicalInsurance => _medicalInsurance ?? false;
  bool hasMedicalInsurance() => _medicalInsurance != null;

  // "travelDocuments" field.
  bool? _travelDocuments;
  bool get travelDocuments => _travelDocuments ?? false;
  bool hasTravelDocuments() => _travelDocuments != null;

  // "airportID" field.
  DocumentReference? _airportID;
  DocumentReference? get airportID => _airportID;
  bool hasAirportID() => _airportID != null;

  // "travelRequirmentsRef" field.
  DocumentReference? _travelRequirmentsRef;
  DocumentReference? get travelRequirmentsRef => _travelRequirmentsRef;
  bool hasTravelRequirmentsRef() => _travelRequirmentsRef != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _docsIndex = snapshotData['docsIndex'] as String?;
    _origin = snapshotData['origin'] as String?;
    _destination = snapshotData['destination'] as String?;
    _nationality = snapshotData['nationality'] as String?;
    _visaType = snapshotData['visaType'] is VisaType
        ? snapshotData['visaType']
        : deserializeEnum<VisaType>(snapshotData['visaType']);
    _visa = snapshotData['visa'] as bool?;
    _medicalInsurance = snapshotData['medicalInsurance'] as bool?;
    _travelDocuments = snapshotData['travelDocuments'] as bool?;
    _airportID = snapshotData['airportID'] as DocumentReference?;
    _travelRequirmentsRef =
        snapshotData['travelRequirmentsRef'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('TravelRequirments')
          : FirebaseFirestore.instance.collectionGroup('TravelRequirments');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('TravelRequirments').doc(id);

  static Stream<TravelRequirmentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TravelRequirmentsRecord.fromSnapshot(s));

  static Future<TravelRequirmentsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => TravelRequirmentsRecord.fromSnapshot(s));

  static TravelRequirmentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TravelRequirmentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TravelRequirmentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TravelRequirmentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TravelRequirmentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TravelRequirmentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTravelRequirmentsRecordData({
  String? docsIndex,
  String? origin,
  String? destination,
  String? nationality,
  VisaType? visaType,
  bool? visa,
  bool? medicalInsurance,
  bool? travelDocuments,
  DocumentReference? airportID,
  DocumentReference? travelRequirmentsRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'docsIndex': docsIndex,
      'origin': origin,
      'destination': destination,
      'nationality': nationality,
      'visaType': visaType,
      'visa': visa,
      'medicalInsurance': medicalInsurance,
      'travelDocuments': travelDocuments,
      'airportID': airportID,
      'travelRequirmentsRef': travelRequirmentsRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class TravelRequirmentsRecordDocumentEquality
    implements Equality<TravelRequirmentsRecord> {
  const TravelRequirmentsRecordDocumentEquality();

  @override
  bool equals(TravelRequirmentsRecord? e1, TravelRequirmentsRecord? e2) {
    return e1?.docsIndex == e2?.docsIndex &&
        e1?.origin == e2?.origin &&
        e1?.destination == e2?.destination &&
        e1?.nationality == e2?.nationality &&
        e1?.visaType == e2?.visaType &&
        e1?.visa == e2?.visa &&
        e1?.medicalInsurance == e2?.medicalInsurance &&
        e1?.travelDocuments == e2?.travelDocuments &&
        e1?.airportID == e2?.airportID &&
        e1?.travelRequirmentsRef == e2?.travelRequirmentsRef;
  }

  @override
  int hash(TravelRequirmentsRecord? e) => const ListEquality().hash([
        e?.docsIndex,
        e?.origin,
        e?.destination,
        e?.nationality,
        e?.visaType,
        e?.visa,
        e?.medicalInsurance,
        e?.travelDocuments,
        e?.airportID,
        e?.travelRequirmentsRef
      ]);

  @override
  bool isValidKey(Object? o) => o is TravelRequirmentsRecord;
}
