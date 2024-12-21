import '/flutter_flow/flutter_flow_util.dart';
import 'nasmiles01_widget.dart' show Nasmiles01Widget;
import 'package:flutter/material.dart';

class Nasmiles01Model extends FlutterFlowModel<Nasmiles01Widget> {
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
