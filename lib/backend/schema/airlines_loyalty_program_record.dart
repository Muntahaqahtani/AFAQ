import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AirlinesLoyaltyProgramRecord extends FirestoreRecord {
  AirlinesLoyaltyProgramRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "LoyaltyName" field.
  String? _loyaltyName;
  String get loyaltyName => _loyaltyName ?? '';
  bool hasLoyaltyName() => _loyaltyName != null;

  // "miles" field.
  double? _miles;
  double get miles => _miles ?? 0.0;
  bool hasMiles() => _miles != null;

  // "MilesNumber" field.
  String? _milesNumber;
  String get milesNumber => _milesNumber ?? '';
  bool hasMilesNumber() => _milesNumber != null;

  // "userID" field.
  String? _userID;
  String get userID => _userID ?? '';
  bool hasUserID() => _userID != null;

  void _initializeFields() {
    _loyaltyName = snapshotData['LoyaltyName'] as String?;
    _miles = castToType<double>(snapshotData['miles']);
    _milesNumber = snapshotData['MilesNumber'] as String?;
    _userID = snapshotData['userID'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('AirlinesLoyaltyProgram');

  static Stream<AirlinesLoyaltyProgramRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => AirlinesLoyaltyProgramRecord.fromSnapshot(s));

  static Future<AirlinesLoyaltyProgramRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => AirlinesLoyaltyProgramRecord.fromSnapshot(s));

  static AirlinesLoyaltyProgramRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AirlinesLoyaltyProgramRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AirlinesLoyaltyProgramRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AirlinesLoyaltyProgramRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AirlinesLoyaltyProgramRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AirlinesLoyaltyProgramRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAirlinesLoyaltyProgramRecordData({
  String? loyaltyName,
  double? miles,
  String? milesNumber,
  String? userID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'LoyaltyName': loyaltyName,
      'miles': miles,
      'MilesNumber': milesNumber,
      'userID': userID,
    }.withoutNulls,
  );

  return firestoreData;
}

class AirlinesLoyaltyProgramRecordDocumentEquality
    implements Equality<AirlinesLoyaltyProgramRecord> {
  const AirlinesLoyaltyProgramRecordDocumentEquality();

  @override
  bool equals(
      AirlinesLoyaltyProgramRecord? e1, AirlinesLoyaltyProgramRecord? e2) {
    return e1?.loyaltyName == e2?.loyaltyName &&
        e1?.miles == e2?.miles &&
        e1?.milesNumber == e2?.milesNumber &&
        e1?.userID == e2?.userID;
  }

  @override
  int hash(AirlinesLoyaltyProgramRecord? e) => const ListEquality()
      .hash([e?.loyaltyName, e?.miles, e?.milesNumber, e?.userID]);

  @override
  bool isValidKey(Object? o) => o is AirlinesLoyaltyProgramRecord;
}
