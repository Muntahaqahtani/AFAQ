import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start BF - emailafaqemail Group Code

class BFEmailafaqemailGroup {
  static String getBaseUrl() => 'https://api.backendflow.io/v1';
  static Map<String, String> headers = {};
  static EmailafaqemailCall emailafaqemailCall = EmailafaqemailCall();
}

class EmailafaqemailCall {
  Future<ApiCallResponse> call({
    String? to = '',
    String? subject = '',
    String? attachmentLink = '',
    String? attachmentName = '',
    String? name = '',
  }) async {
    final baseUrl = BFEmailafaqemailGroup.getBaseUrl();

    const ffApiRequestBody = '''
{
  "sk-bf-40bfc288-4c36-4ced-943f-6040f11c03cd": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'emailafaqemail',
      apiUrl:
          '$baseUrl/email?templateId=QTgScstFXRNtzdApFZxf&to=$to&subject=$subject&attachmentLink=$attachmentLink&attachmentName=$attachmentName&name=$name',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End BF - emailafaqemail Group Code

/// Start BF - pdfgenboarding Group Code

class BFPdfgenboardingGroup {
  static String getBaseUrl() => 'https://api.backendflow.io/v1';
  static Map<String, String> headers = {};
  static PdfgenboardingCall pdfgenboardingCall = PdfgenboardingCall();
}

class PdfgenboardingCall {
  Future<ApiCallResponse> call({
    String? orientation = '',
    String? pageSize = '',
    String? name = '',
    String? boardingTime = '',
    String? gate = '',
    String? depDate = '',
    String? depCity = '',
    String? arrivalCity = '',
    String? airline = '',
    String? seatType = '',
    String? seatID = '',
  }) async {
    final baseUrl = BFPdfgenboardingGroup.getBaseUrl();

    const ffApiRequestBody = '''
{
  "sk-bf-40bfc288-4c36-4ced-943f-6040f11c03cd": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'pdfgenboarding',
      apiUrl:
          '$baseUrl/pdfgen?templateId=QSM4jnzieH45UxvmjwAR&orientation=$orientation&pageSize=$pageSize&name=$name&boardingTime=$boardingTime&gate=$gate&depDate=$depDate&depCity=$depCity&arrivalCity=$arrivalCity&airline=$airline&seatType=$seatType&seatID=$seatID',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End BF - pdfgenboarding Group Code

/// Start BF - emailbookingconfirmation Group Code

class BFEmailbookingconfirmationGroup {
  static String getBaseUrl() => 'https://api.backendflow.io/v1';
  static Map<String, String> headers = {};
  static EmailbookingconfirmationCall emailbookingconfirmationCall =
      EmailbookingconfirmationCall();
}

class EmailbookingconfirmationCall {
  Future<ApiCallResponse> call({
    String? to = '',
    String? subject = '',
    String? attachmentLink = '',
    String? attachmentName = '',
    String? name = '',
  }) async {
    final baseUrl = BFEmailbookingconfirmationGroup.getBaseUrl();

    const ffApiRequestBody = '''
{
  "sk-bf-11c0ca0c-e777-4d8b-a8fe-6da00e85575b": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'emailbookingconfirmation',
      apiUrl:
          '$baseUrl/email?templateId=4w8X2cauuptsjcThinN0&to=$to&subject=$subject&attachmentLink=$attachmentLink&attachmentName=$attachmentName&name=$name',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End BF - emailbookingconfirmation Group Code

/// Start BF - pdfgenbookingdetails Group Code

class BFPdfgenbookingdetailsGroup {
  static String getBaseUrl() => 'https://api.backendflow.io/v1';
  static Map<String, String> headers = {};
  static PdfgenbookingdetailsCall pdfgenbookingdetailsCall =
      PdfgenbookingdetailsCall();
}

class PdfgenbookingdetailsCall {
  Future<ApiCallResponse> call({
    String? orientation = '',
    String? pageSize = '',
    String? name = '',
    String? depDate = '',
    String? arrivalDate = '',
    String? airline = '',
    String? seatType = '',
    String? passengersNum = '',
    String? depCity = '',
    String? arrivalCity = '',
    String? amountPaid = '',
  }) async {
    final baseUrl = BFPdfgenbookingdetailsGroup.getBaseUrl();

    const ffApiRequestBody = '''
{
  "sk-bf-11c0ca0c-e777-4d8b-a8fe-6da00e85575b": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'pdfgenbookingdetails',
      apiUrl:
          '$baseUrl/pdfgen?templateId=zYIVGCM9nRpvrLmDp5XZ&orientation=$orientation&pageSize=$pageSize&name=$name&depDate=$depDate&arrivalDate=$arrivalDate&airline=$airline&seatType=$seatType&passengersNum=$passengersNum&depCity=$depCity&arrivalCity=$arrivalCity&amountPaid=$amountPaid',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End BF - pdfgenbookingdetails Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
