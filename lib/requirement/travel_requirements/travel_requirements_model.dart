import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'travel_requirements_widget.dart' show TravelRequirementsWidget;
import 'package:flutter/material.dart';

class TravelRequirementsModel
    extends FlutterFlowModel<TravelRequirementsWidget> {
  ///  Local state fields for this page.

  bool isOriginSelected = true;

  bool isDestinitionSelected = true;

  bool isNationalitySelected = true;

  bool isPurposeSelected = true;

  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // State field(s) for DropDown widget.
  String? dropDownValue4;
  FormFieldController<String>? dropDownValueController4;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
