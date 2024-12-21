import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'search_flight_widget.dart' show SearchFlightWidget;
import 'package:flutter/material.dart';

class SearchFlightModel extends FlutterFlowModel<SearchFlightWidget> {
  ///  Local state fields for this page.

  List<String> uniqueOrigins = [];
  void addToUniqueOrigins(String item) => uniqueOrigins.add(item);
  void removeFromUniqueOrigins(String item) => uniqueOrigins.remove(item);
  void removeAtIndexFromUniqueOrigins(int index) =>
      uniqueOrigins.removeAt(index);
  void insertAtIndexInUniqueOrigins(int index, String item) =>
      uniqueOrigins.insert(index, item);
  void updateUniqueOriginsAtIndex(int index, Function(String) updateFn) =>
      uniqueOrigins[index] = updateFn(uniqueOrigins[index]);

  List<String> uniqueDestinations = [];
  void addToUniqueDestinations(String item) => uniqueDestinations.add(item);
  void removeFromUniqueDestinations(String item) =>
      uniqueDestinations.remove(item);
  void removeAtIndexFromUniqueDestinations(int index) =>
      uniqueDestinations.removeAt(index);
  void insertAtIndexInUniqueDestinations(int index, String item) =>
      uniqueDestinations.insert(index, item);
  void updateUniqueDestinationsAtIndex(int index, Function(String) updateFn) =>
      uniqueDestinations[index] = updateFn(uniqueDestinations[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for destination widget.
  String? destinationValue;
  FormFieldController<String>? destinationValueController;
  DateTime? datePicked1;
  // State field(s) for originRound widget.
  String? originRoundValue;
  FormFieldController<String>? originRoundValueController;
  // State field(s) for destinationRound widget.
  String? destinationRoundValue;
  FormFieldController<String>? destinationRoundValueController;
  DateTime? datePicked2;
  DateTime? datePicked3;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
