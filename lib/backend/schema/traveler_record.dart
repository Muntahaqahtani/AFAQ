import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TravelerRecord extends FirestoreRecord {
  TravelerRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "firstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "lastName" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "DOB" field.
  DateTime? _dob;
  DateTime? get dob => _dob;
  bool hasDob() => _dob != null;

  // "documentType" field.
  String? _documentType;
  String get documentType => _documentType ?? '';
  bool hasDocumentType() => _documentType != null;

  // "nationalID" field.
  String? _nationalID;
  String get nationalID => _nationalID ?? '';
  bool hasNationalID() => _nationalID != null;

  // "issuingCountry" field.
  String? _issuingCountry;
  String get issuingCountry => _issuingCountry ?? '';
  bool hasIssuingCountry() => _issuingCountry != null;

  // "expireDate" field.
  DateTime? _expireDate;
  DateTime? get expireDate => _expireDate;
  bool hasExpireDate() => _expireDate != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _firstName = snapshotData['firstName'] as String?;
    _lastName = snapshotData['lastName'] as String?;
    _dob = snapshotData['DOB'] as DateTime?;
    _documentType = snapshotData['documentType'] as String?;
    _nationalID = snapshotData['nationalID'] as String?;
    _issuingCountry = snapshotData['issuingCountry'] as String?;
    _expireDate = snapshotData['expireDate'] as DateTime?;
    _email = snapshotData['email'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Traveler')
          : FirebaseFirestore.instance.collectionGroup('Traveler');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Traveler').doc(id);

  static Stream<TravelerRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TravelerRecord.fromSnapshot(s));

  static Future<TravelerRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TravelerRecord.fromSnapshot(s));

  static TravelerRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TravelerRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TravelerRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TravelerRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TravelerRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TravelerRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTravelerRecordData({
  String? firstName,
  String? lastName,
  DateTime? dob,
  String? documentType,
  String? nationalID,
  String? issuingCountry,
  DateTime? expireDate,
  String? email,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'firstName': firstName,
      'lastName': lastName,
      'DOB': dob,
      'documentType': documentType,
      'nationalID': nationalID,
      'issuingCountry': issuingCountry,
      'expireDate': expireDate,
      'email': email,
    }.withoutNulls,
  );

  return firestoreData;
}

class TravelerRecordDocumentEquality implements Equality<TravelerRecord> {
  const TravelerRecordDocumentEquality();

  @override
  bool equals(TravelerRecord? e1, TravelerRecord? e2) {
    return e1?.firstName == e2?.firstName &&
        e1?.lastName == e2?.lastName &&
        e1?.dob == e2?.dob &&
        e1?.documentType == e2?.documentType &&
        e1?.nationalID == e2?.nationalID &&
        e1?.issuingCountry == e2?.issuingCountry &&
        e1?.expireDate == e2?.expireDate &&
        e1?.email == e2?.email;
  }

  @override
  int hash(TravelerRecord? e) => const ListEquality().hash([
        e?.firstName,
        e?.lastName,
        e?.dob,
        e?.documentType,
        e?.nationalID,
        e?.issuingCountry,
        e?.expireDate,
        e?.email
      ]);

  @override
  bool isValidKey(Object? o) => o is TravelerRecord;
}
