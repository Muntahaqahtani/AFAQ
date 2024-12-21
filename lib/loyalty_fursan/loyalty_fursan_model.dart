import '/flutter_flow/flutter_flow_util.dart';
import 'loyalty_fursan_widget.dart' show LoyaltyFursanWidget;
import 'package:flutter/material.dart';

class LoyaltyFursanModel extends FlutterFlowModel<LoyaltyFursanWidget> {
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
