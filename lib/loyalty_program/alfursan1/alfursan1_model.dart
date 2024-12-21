import '/flutter_flow/flutter_flow_util.dart';
import 'alfursan1_widget.dart' show Alfursan1Widget;
import 'package:flutter/material.dart';

class Alfursan1Model extends FlutterFlowModel<Alfursan1Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
