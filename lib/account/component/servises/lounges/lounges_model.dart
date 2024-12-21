import '/flutter_flow/flutter_flow_util.dart';
import 'lounges_widget.dart' show LoungesWidget;
import 'package:flutter/material.dart';

class LoungesModel extends FlutterFlowModel<LoungesWidget> {
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
