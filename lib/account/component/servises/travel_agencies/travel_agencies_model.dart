import '/flutter_flow/flutter_flow_util.dart';
import 'travel_agencies_widget.dart' show TravelAgenciesWidget;
import 'package:flutter/material.dart';

class TravelAgenciesModel extends FlutterFlowModel<TravelAgenciesWidget> {
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
