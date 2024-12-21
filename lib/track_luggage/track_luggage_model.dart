import '/flutter_flow/flutter_flow_util.dart';
import 'track_luggage_widget.dart' show TrackLuggageWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class TrackLuggageModel extends FlutterFlowModel<TrackLuggageWidget> {
  ///  Local state fields for this page.

  bool? isTagNumberValid;

  bool? isDateValid;

  bool? isButtonEnable;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  final textFieldMask = MaskTextInputFormatter(mask: '#######');
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
