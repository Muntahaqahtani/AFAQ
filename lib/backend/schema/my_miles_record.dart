import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MyMilesRecord extends FirestoreRecord {
  MyMilesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "mileBalance" field.
  double? _mileBalance;
  double get mileBalance => _mileBalance ?? 0.0;
  bool hasMileBalance() => _mileBalance != null;

  // "accountID" field.
  DocumentReference? _accountID;
  DocumentReference? get accountID => _accountID;
  bool hasAccountID() => _accountID != null;

  // "loyaltyName" field.
  String? _loyaltyName;
  String get loyaltyName => _loyaltyName ?? '';
  bool hasLoyaltyName() => _loyaltyName != null;

  // "loyaltyRef" field.
  DocumentReference? _loyaltyRef;
  DocumentReference? get loyaltyRef => _loyaltyRef;
  bool hasLoyaltyRef() => _loyaltyRef != null;

  // "airlineName" field.
  String? _airlineName;
  String get airlineName => _airlineName ?? '';
  bool hasAirlineName() => _airlineName != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _mileBalance = castToType<double>(snapshotData['mileBalance']);
    _accountID = snapshotData['accountID'] as DocumentReference?;
    _loyaltyName = snapshotData['loyaltyName'] as String?;
    _loyaltyRef = snapshotData['loyaltyRef'] as DocumentReference?;
    _airlineName = snapshotData['airlineName'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('MyMiles')
          : FirebaseFirestore.instance.collectionGroup('MyMiles');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('MyMiles').doc(id);

  static Stream<MyMilesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MyMilesRecord.fromSnapshot(s));

  static Future<MyMilesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MyMilesRecord.fromSnapshot(s));

  static MyMilesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MyMilesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MyMilesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MyMilesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MyMilesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MyMilesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMyMilesRecordData({
  double? mileBalance,
  DocumentReference? accountID,
  String? loyaltyName,
  DocumentReference? loyaltyRef,
  String? airlineName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'mileBalance': mileBalance,
      'accountID': accountID,
      'loyaltyName': loyaltyName,
      'loyaltyRef': loyaltyRef,
      'airlineName': airlineName,
    }.withoutNulls,
  );

  return firestoreData;
}

class MyMilesRecordDocumentEquality implements Equality<MyMilesRecord> {
  const MyMilesRecordDocumentEquality();

  @override
  bool equals(MyMilesRecord? e1, MyMilesRecord? e2) {
    return e1?.mileBalance == e2?.mileBalance &&
        e1?.accountID == e2?.accountID &&
        e1?.loyaltyName == e2?.loyaltyName &&
        e1?.loyaltyRef == e2?.loyaltyRef &&
        e1?.airlineName == e2?.airlineName;
  }

  @override
  int hash(MyMilesRecord? e) => const ListEquality().hash([
        e?.mileBalance,
        e?.accountID,
        e?.loyaltyName,
        e?.loyaltyRef,
        e?.airlineName
      ]);

  @override
  bool isValidKey(Object? o) => o is MyMilesRecord;
}
