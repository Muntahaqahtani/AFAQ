// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CreditCardInfoStruct extends FFFirebaseStruct {
  CreditCardInfoStruct({
    String? cardName,
    String? cardNumber,
    DateTime? carsExpiredDate,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _cardName = cardName,
        _cardNumber = cardNumber,
        _carsExpiredDate = carsExpiredDate,
        super(firestoreUtilData);

  // "cardName" field.
  String? _cardName;
  String get cardName => _cardName ?? '';
  set cardName(String? val) => _cardName = val;

  bool hasCardName() => _cardName != null;

  // "cardNumber" field.
  String? _cardNumber;
  String get cardNumber => _cardNumber ?? '';
  set cardNumber(String? val) => _cardNumber = val;

  bool hasCardNumber() => _cardNumber != null;

  // "carsExpiredDate" field.
  DateTime? _carsExpiredDate;
  DateTime? get carsExpiredDate => _carsExpiredDate;
  set carsExpiredDate(DateTime? val) => _carsExpiredDate = val;

  bool hasCarsExpiredDate() => _carsExpiredDate != null;

  static CreditCardInfoStruct fromMap(Map<String, dynamic> data) =>
      CreditCardInfoStruct(
        cardName: data['cardName'] as String?,
        cardNumber: data['cardNumber'] as String?,
        carsExpiredDate: data['carsExpiredDate'] as DateTime?,
      );

  static CreditCardInfoStruct? maybeFromMap(dynamic data) => data is Map
      ? CreditCardInfoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'cardName': _cardName,
        'cardNumber': _cardNumber,
        'carsExpiredDate': _carsExpiredDate,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'cardName': serializeParam(
          _cardName,
          ParamType.String,
        ),
        'cardNumber': serializeParam(
          _cardNumber,
          ParamType.String,
        ),
        'carsExpiredDate': serializeParam(
          _carsExpiredDate,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static CreditCardInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      CreditCardInfoStruct(
        cardName: deserializeParam(
          data['cardName'],
          ParamType.String,
          false,
        ),
        cardNumber: deserializeParam(
          data['cardNumber'],
          ParamType.String,
          false,
        ),
        carsExpiredDate: deserializeParam(
          data['carsExpiredDate'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'CreditCardInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CreditCardInfoStruct &&
        cardName == other.cardName &&
        cardNumber == other.cardNumber &&
        carsExpiredDate == other.carsExpiredDate;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([cardName, cardNumber, carsExpiredDate]);
}

CreditCardInfoStruct createCreditCardInfoStruct({
  String? cardName,
  String? cardNumber,
  DateTime? carsExpiredDate,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CreditCardInfoStruct(
      cardName: cardName,
      cardNumber: cardNumber,
      carsExpiredDate: carsExpiredDate,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CreditCardInfoStruct? updateCreditCardInfoStruct(
  CreditCardInfoStruct? creditCardInfo, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    creditCardInfo
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCreditCardInfoStructData(
  Map<String, dynamic> firestoreData,
  CreditCardInfoStruct? creditCardInfo,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (creditCardInfo == null) {
    return;
  }
  if (creditCardInfo.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && creditCardInfo.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final creditCardInfoData =
      getCreditCardInfoFirestoreData(creditCardInfo, forFieldValue);
  final nestedData =
      creditCardInfoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = creditCardInfo.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCreditCardInfoFirestoreData(
  CreditCardInfoStruct? creditCardInfo, [
  bool forFieldValue = false,
]) {
  if (creditCardInfo == null) {
    return {};
  }
  final firestoreData = mapToFirestore(creditCardInfo.toMap());

  // Add any Firestore field values
  creditCardInfo.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCreditCardInfoListFirestoreData(
  List<CreditCardInfoStruct>? creditCardInfos,
) =>
    creditCardInfos
        ?.map((e) => getCreditCardInfoFirestoreData(e, true))
        .toList() ??
    [];
