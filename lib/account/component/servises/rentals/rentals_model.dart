import '/flutter_flow/flutter_flow_util.dart';
import 'rentals_widget.dart' show RentalsWidget;
import 'package:flutter/material.dart';

class RentalsModel extends FlutterFlowModel<RentalsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
