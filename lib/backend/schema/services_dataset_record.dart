import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServicesDatasetRecord extends FirestoreRecord {
  ServicesDatasetRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "LocTerminal2" field.
  String? _locTerminal2;
  String get locTerminal2 => _locTerminal2 ?? '';
  bool hasLocTerminal2() => _locTerminal2 != null;

  // "LocTerminal2lang" field.
  LatLng? _locTerminal2lang;
  LatLng? get locTerminal2lang => _locTerminal2lang;
  bool hasLocTerminal2lang() => _locTerminal2lang != null;

  // "LocTerminal3" field.
  String? _locTerminal3;
  String get locTerminal3 => _locTerminal3 ?? '';
  bool hasLocTerminal3() => _locTerminal3 != null;

  // "LocTerminal3lang" field.
  LatLng? _locTerminal3lang;
  LatLng? get locTerminal3lang => _locTerminal3lang;
  bool hasLocTerminal3lang() => _locTerminal3lang != null;

  // "LocTerminal4" field.
  String? _locTerminal4;
  String get locTerminal4 => _locTerminal4 ?? '';
  bool hasLocTerminal4() => _locTerminal4 != null;

  // "LocTerminal4lang" field.
  LatLng? _locTerminal4lang;
  LatLng? get locTerminal4lang => _locTerminal4lang;
  bool hasLocTerminal4lang() => _locTerminal4lang != null;

  // "LocTerminal5" field.
  String? _locTerminal5;
  String get locTerminal5 => _locTerminal5 ?? '';
  bool hasLocTerminal5() => _locTerminal5 != null;

  // "LocTerminal5lang" field.
  LatLng? _locTerminal5lang;
  LatLng? get locTerminal5lang => _locTerminal5lang;
  bool hasLocTerminal5lang() => _locTerminal5lang != null;

  // "ServiceImage" field.
  String? _serviceImage;
  String get serviceImage => _serviceImage ?? '';
  bool hasServiceImage() => _serviceImage != null;

  // "ServiceName" field.
  String? _serviceName;
  String get serviceName => _serviceName ?? '';
  bool hasServiceName() => _serviceName != null;

  // "ServiceCategeoy" field.
  String? _serviceCategeoy;
  String get serviceCategeoy => _serviceCategeoy ?? '';
  bool hasServiceCategeoy() => _serviceCategeoy != null;

  void _initializeFields() {
    _locTerminal2 = snapshotData['LocTerminal2'] as String?;
    _locTerminal2lang = snapshotData['LocTerminal2lang'] as LatLng?;
    _locTerminal3 = snapshotData['LocTerminal3'] as String?;
    _locTerminal3lang = snapshotData['LocTerminal3lang'] as LatLng?;
    _locTerminal4 = snapshotData['LocTerminal4'] as String?;
    _locTerminal4lang = snapshotData['LocTerminal4lang'] as LatLng?;
    _locTerminal5 = snapshotData['LocTerminal5'] as String?;
    _locTerminal5lang = snapshotData['LocTerminal5lang'] as LatLng?;
    _serviceImage = snapshotData['ServiceImage'] as String?;
    _serviceName = snapshotData['ServiceName'] as String?;
    _serviceCategeoy = snapshotData['ServiceCategeoy'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Services_Dataset');

  static Stream<ServicesDatasetRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ServicesDatasetRecord.fromSnapshot(s));

  static Future<ServicesDatasetRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ServicesDatasetRecord.fromSnapshot(s));

  static ServicesDatasetRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ServicesDatasetRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ServicesDatasetRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ServicesDatasetRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ServicesDatasetRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ServicesDatasetRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createServicesDatasetRecordData({
  String? locTerminal2,
  LatLng? locTerminal2lang,
  String? locTerminal3,
  LatLng? locTerminal3lang,
  String? locTerminal4,
  LatLng? locTerminal4lang,
  String? locTerminal5,
  LatLng? locTerminal5lang,
  String? serviceImage,
  String? serviceName,
  String? serviceCategeoy,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'LocTerminal2': locTerminal2,
      'LocTerminal2lang': locTerminal2lang,
      'LocTerminal3': locTerminal3,
      'LocTerminal3lang': locTerminal3lang,
      'LocTerminal4': locTerminal4,
      'LocTerminal4lang': locTerminal4lang,
      'LocTerminal5': locTerminal5,
      'LocTerminal5lang': locTerminal5lang,
      'ServiceImage': serviceImage,
      'ServiceName': serviceName,
      'ServiceCategeoy': serviceCategeoy,
    }.withoutNulls,
  );

  return firestoreData;
}

class ServicesDatasetRecordDocumentEquality
    implements Equality<ServicesDatasetRecord> {
  const ServicesDatasetRecordDocumentEquality();

  @override
  bool equals(ServicesDatasetRecord? e1, ServicesDatasetRecord? e2) {
    return e1?.locTerminal2 == e2?.locTerminal2 &&
        e1?.locTerminal2lang == e2?.locTerminal2lang &&
        e1?.locTerminal3 == e2?.locTerminal3 &&
        e1?.locTerminal3lang == e2?.locTerminal3lang &&
        e1?.locTerminal4 == e2?.locTerminal4 &&
        e1?.locTerminal4lang == e2?.locTerminal4lang &&
        e1?.locTerminal5 == e2?.locTerminal5 &&
        e1?.locTerminal5lang == e2?.locTerminal5lang &&
        e1?.serviceImage == e2?.serviceImage &&
        e1?.serviceName == e2?.serviceName &&
        e1?.serviceCategeoy == e2?.serviceCategeoy;
  }

  @override
  int hash(ServicesDatasetRecord? e) => const ListEquality().hash([
        e?.locTerminal2,
        e?.locTerminal2lang,
        e?.locTerminal3,
        e?.locTerminal3lang,
        e?.locTerminal4,
        e?.locTerminal4lang,
        e?.locTerminal5,
        e?.locTerminal5lang,
        e?.serviceImage,
        e?.serviceName,
        e?.serviceCategeoy
      ]);

  @override
  bool isValidKey(Object? o) => o is ServicesDatasetRecord;
}
