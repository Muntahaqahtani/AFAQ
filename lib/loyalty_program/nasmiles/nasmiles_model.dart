import '/flutter_flow/flutter_flow_util.dart';
import 'nasmiles_widget.dart' show NasmilesWidget;
import 'package:flutter/material.dart';

class NasmilesModel extends FlutterFlowModel<NasmilesWidget> {
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
