import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'rescheduledpay_widget.dart' show RescheduledpayWidget;
import 'package:flutter/material.dart';

class RescheduledpayModel extends FlutterFlowModel<RescheduledpayWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Stores action output result for [Stripe Payment] action in Button widget.
  String? paymentId2;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  FlightBookingRecord? createdFlightBooking;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  MyMilesRecord? createdMyMilesDoc;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
