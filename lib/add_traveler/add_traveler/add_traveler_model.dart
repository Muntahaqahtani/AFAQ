import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_traveler_widget.dart' show AddTravelerWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AddTravelerModel extends FlutterFlowModel<AddTravelerWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for FirstNameField widget.
  FocusNode? firstNameFieldFocusNode;
  TextEditingController? firstNameFieldTextController;
  String? Function(BuildContext, String?)?
      firstNameFieldTextControllerValidator;
  // State field(s) for LAstNameField widget.
  FocusNode? lAstNameFieldFocusNode;
  TextEditingController? lAstNameFieldTextController;
  String? Function(BuildContext, String?)? lAstNameFieldTextControllerValidator;
  DateTime? datePicked1;
  // State field(s) for DocTypeField widget.
  FocusNode? docTypeFieldFocusNode;
  TextEditingController? docTypeFieldTextController;
  final docTypeFieldMask = MaskTextInputFormatter(mask: 'A######');
  String? Function(BuildContext, String?)? docTypeFieldTextControllerValidator;
  // State field(s) for NationaIDField widget.
  FocusNode? nationaIDFieldFocusNode;
  TextEditingController? nationaIDFieldTextController;
  final nationaIDFieldMask = MaskTextInputFormatter(mask: '##########');
  String? Function(BuildContext, String?)?
      nationaIDFieldTextControllerValidator;
  // State field(s) for IsuuingCountryDropDwon widget.
  String? isuuingCountryDropDwonValue;
  FormFieldController<String>? isuuingCountryDropDwonValueController;
  DateTime? datePicked2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    firstNameFieldFocusNode?.dispose();
    firstNameFieldTextController?.dispose();

    lAstNameFieldFocusNode?.dispose();
    lAstNameFieldTextController?.dispose();

    docTypeFieldFocusNode?.dispose();
    docTypeFieldTextController?.dispose();

    nationaIDFieldFocusNode?.dispose();
    nationaIDFieldTextController?.dispose();
  }
}
