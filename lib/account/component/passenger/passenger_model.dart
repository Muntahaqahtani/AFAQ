import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'passenger_widget.dart' show PassengerWidget;
import 'package:flutter/material.dart';

class PassengerModel extends FlutterFlowModel<PassengerWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for adultCountControlloer widget.
  int? adultCountControlloerValue;
  // State field(s) for childCountController widget.
  int? childCountControllerValue;
  // State field(s) for infantCountController widget.
  int? infantCountControllerValue;
  // State field(s) for cabinClassType widget.
  String? cabinClassTypeValue;
  FormFieldController<String>? cabinClassTypeValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
