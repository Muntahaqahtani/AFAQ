import '/account/component/filter/filter_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'filter_widget.dart' show FilterWidget;
import 'package:flutter/material.dart';

class FilterModel extends FlutterFlowModel<FilterWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for ChoiceChips1 widget.
  FormFieldController<List<String>>? choiceChips1ValueController;
  String? get choiceChips1Value =>
      choiceChips1ValueController?.value?.firstOrNull;
  set choiceChips1Value(String? val) =>
      choiceChips1ValueController?.value = val != null ? [val] : [];
  // State field(s) for ChoiceChips2 widget.
  FormFieldController<List<String>>? choiceChips2ValueController;
  String? get choiceChips2Value =>
      choiceChips2ValueController?.value?.firstOrNull;
  set choiceChips2Value(String? val) =>
      choiceChips2ValueController?.value = val != null ? [val] : [];
  // State field(s) for CheckboxGroup widget.
  FormFieldController<List<String>>? checkboxGroupValueController;
  List<String>? get checkboxGroupValues => checkboxGroupValueController?.value;
  set checkboxGroupValues(List<String>? v) =>
      checkboxGroupValueController?.value = v;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
