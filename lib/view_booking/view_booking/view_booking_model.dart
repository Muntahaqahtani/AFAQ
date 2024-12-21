import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'view_booking_widget.dart' show ViewBookingWidget;
import 'package:flutter/material.dart';

class ViewBookingModel extends FlutterFlowModel<ViewBookingWidget> {
  ///  Local state fields for this page.

  FlightBookingRecord? test;

  bool activeEmpty = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in viewBooking widget.
  List<FlightBookingRecord>? querysuccess;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  AirlinesDatasetRecord? containerPreviousSnapshot;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
