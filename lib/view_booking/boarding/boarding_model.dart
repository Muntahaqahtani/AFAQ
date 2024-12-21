import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'boarding_widget.dart' show BoardingWidget;
import 'package:flutter/material.dart';

class BoardingModel extends FlutterFlowModel<BoardingWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (pdfgenboarding)] action in Button widget.
  ApiCallResponse? boardingPDF;
  // Stores action output result for [Backend Call - API (emailafaqemail)] action in Button widget.
  ApiCallResponse? apiResultcnf;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
