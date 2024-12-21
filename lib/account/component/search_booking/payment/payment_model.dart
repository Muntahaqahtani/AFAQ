import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'payment_widget.dart' show PaymentWidget;
import 'package:flutter/material.dart';

class PaymentModel extends FlutterFlowModel<PaymentWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Stores action output result for [Stripe Payment] action in Button widget.
  String? paymentId2;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  FlightBookingRecord? createdFlightBooking;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  MyMilesRecord? createdMyMilesDoc;
  // Stores action output result for [Backend Call - API (pdfgenbookingdetails)] action in Button widget.
  ApiCallResponse? pdfBooking;
  // Stores action output result for [Backend Call - API (emailbookingconfirmation)] action in Button widget.
  ApiCallResponse? apiResult7pm;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
