import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'passenger_model.dart';
export 'passenger_model.dart';

class PassengerWidget extends StatefulWidget {
  const PassengerWidget({
    super.key,
    int? tabIndex,
  }) : tabIndex = tabIndex ?? 0;

  final int tabIndex;

  @override
  State<PassengerWidget> createState() => _PassengerWidgetState();
}

class _PassengerWidgetState extends State<PassengerWidget> {
  late PassengerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PassengerModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().selectedCabinClass = 'Economy';
      FFAppState().totalSelectedPassengers = 1;
      FFAppState().selectedAdultCount = 0;
      FFAppState().selectedChildCount = 0;
      FFAppState().selectedInfantCount = 0;
      safeSetState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 110.0, 0.0),
                  child: Text(
                    'Passengers and cabin class',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Prompt',
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 2.0,
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                  child: Icon(
                    Icons.people_alt_sharp,
                    color: FlutterFlowTheme.of(context).primary,
                    size: 24.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                  child: Text(
                    'Passenger',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Prompt',
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 2.0,
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 160.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Adult',
                          textAlign: TextAlign.start,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Prompt',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Age (+12)',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Prompt',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 120.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    borderRadius: BorderRadius.circular(8.0),
                    shape: BoxShape.rectangle,
                  ),
                  child: FlutterFlowCountController(
                    decrementIconBuilder: (enabled) => FaIcon(
                      FontAwesomeIcons.solidMinusSquare,
                      color: enabled
                          ? FlutterFlowTheme.of(context).secondaryText
                          : FlutterFlowTheme.of(context).alternate,
                      size: 24.0,
                    ),
                    incrementIconBuilder: (enabled) => Icon(
                      Icons.add_box,
                      color: enabled
                          ? const Color(0xFFBB7A80)
                          : FlutterFlowTheme.of(context).alternate,
                      size: 24.0,
                    ),
                    countBuilder: (count) => Text(
                      count.toString(),
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Prompt',
                            letterSpacing: 0.0,
                          ),
                    ),
                    count: _model.adultCountControlloerValue ??=
                        FFAppState().selectedAdultCount,
                    updateCount: (count) async {
                      safeSetState(
                          () => _model.adultCountControlloerValue = count);
                      FFAppState().selectedAdultCount =
                          _model.adultCountControlloerValue!;
                      safeSetState(() {});
                    },
                    stepSize: 1,
                    minimum: 0,
                    contentPadding:
                        const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 2.0,
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 154.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Child',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Prompt',
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      Text(
                        'Age (2-11)',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Prompt',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 120.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    borderRadius: BorderRadius.circular(8.0),
                    shape: BoxShape.rectangle,
                  ),
                  child: FlutterFlowCountController(
                    decrementIconBuilder: (enabled) => FaIcon(
                      FontAwesomeIcons.solidMinusSquare,
                      color: enabled
                          ? FlutterFlowTheme.of(context).secondaryText
                          : FlutterFlowTheme.of(context).alternate,
                      size: 24.0,
                    ),
                    incrementIconBuilder: (enabled) => Icon(
                      Icons.add_box,
                      color: enabled
                          ? const Color(0xFFBB7A80)
                          : FlutterFlowTheme.of(context).alternate,
                      size: 24.0,
                    ),
                    countBuilder: (count) => Text(
                      count.toString(),
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Prompt',
                            letterSpacing: 0.0,
                          ),
                    ),
                    count: _model.childCountControllerValue ??=
                        FFAppState().selectedChildCount,
                    updateCount: (count) async {
                      safeSetState(
                          () => _model.childCountControllerValue = count);
                      FFAppState().selectedChildCount =
                          _model.childCountControllerValue!;
                      safeSetState(() {});
                    },
                    stepSize: 1,
                    minimum: 0,
                    contentPadding:
                        const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 2.0,
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 124.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Infant',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Prompt',
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      Text(
                        'Age (under 2)',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Prompt',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 120.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    borderRadius: BorderRadius.circular(8.0),
                    shape: BoxShape.rectangle,
                  ),
                  child: FlutterFlowCountController(
                    decrementIconBuilder: (enabled) => FaIcon(
                      FontAwesomeIcons.solidMinusSquare,
                      color: enabled
                          ? FlutterFlowTheme.of(context).secondaryText
                          : FlutterFlowTheme.of(context).alternate,
                      size: 24.0,
                    ),
                    incrementIconBuilder: (enabled) => Icon(
                      Icons.add_box,
                      color: enabled
                          ? const Color(0xFFBB7A80)
                          : FlutterFlowTheme.of(context).alternate,
                      size: 24.0,
                    ),
                    countBuilder: (count) => Text(
                      count.toString(),
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Prompt',
                            letterSpacing: 0.0,
                          ),
                    ),
                    count: _model.infantCountControllerValue ??=
                        FFAppState().selectedInfantCount,
                    updateCount: (count) async {
                      safeSetState(
                          () => _model.infantCountControllerValue = count);
                      FFAppState().selectedInfantCount =
                          _model.infantCountControllerValue!;
                      safeSetState(() {});
                    },
                    stepSize: 1,
                    minimum: 0,
                    contentPadding:
                        const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 2.0,
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
            Divider(
              thickness: 2.0,
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.airline_seat_recline_normal,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 24.0,
                    ),
                    Flexible(
                      child: Align(
                        alignment: const AlignmentDirectional(-1.0, -1.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              5.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Cabin class',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Prompt',
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                        child: FlutterFlowDropDown<String>(
                          controller: _model.cabinClassTypeValueController ??=
                              FormFieldController<String>(
                            _model.cabinClassTypeValue ??=
                                FFAppState().selectedCabinClass,
                          ),
                          options:
                              CabinClass.values.map((e) => e.name).toList(),
                          onChanged: (val) async {
                            safeSetState(
                                () => _model.cabinClassTypeValue = val);
                            FFAppState().selectedCabinClass =
                                _model.cabinClassTypeValue!;
                            safeSetState(() {});
                          },
                          width: 200.0,
                          height: 40.0,
                          textStyle:
                              FlutterFlowTheme.of(context).bodySmall.override(
                                    fontFamily: 'Prompt',
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 13.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                          hintText: 'select cabin class ',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 24.0,
                          ),
                          elevation: 2.0,
                          borderColor: Colors.transparent,
                          borderWidth: 0.0,
                          borderRadius: 8.0,
                          margin: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 12.0, 0.0),
                          hidesUnderline: true,
                          isOverButton: false,
                          isSearchable: false,
                          isMultiSelect: false,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 2.0,
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
            Divider(
              thickness: 2.0,
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
            Divider(
              thickness: 2.0,
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
            Divider(
              thickness: 2.0,
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: FFButtonWidget(
                onPressed: () async {
                  FFAppState().totalSelectedPassengers =
                      FFAppState().selectedAdultCount +
                          FFAppState().selectedChildCount +
                          FFAppState().selectedInfantCount;
                  FFAppState().selectedCabinClass = _model.cabinClassTypeValue!;
                  safeSetState(() {});
                  if (widget.tabIndex == 0) {
                    context.pushNamed(
                      'searchFlight',
                      queryParameters: {
                        'totalPassengers': serializeParam(
                          FFAppState().totalSelectedPassengers,
                          ParamType.int,
                        ),
                        'cabinClass': serializeParam(
                          FFAppState().selectedCabinClass,
                          ParamType.String,
                        ),
                        'tabIndexRef': serializeParam(
                          0,
                          ParamType.int,
                        ),
                      }.withoutNulls,
                    );
                  } else {
                    context.pushNamed(
                      'searchFlight',
                      queryParameters: {
                        'totalPassengers': serializeParam(
                          FFAppState().totalSelectedPassengers,
                          ParamType.int,
                        ),
                        'cabinClass': serializeParam(
                          FFAppState().selectedCabinClass,
                          ParamType.String,
                        ),
                        'tabIndexRef': serializeParam(
                          1,
                          ParamType.int,
                        ),
                      }.withoutNulls,
                    );
                  }

                  Navigator.pop(context);
                },
                text: 'Confirm',
                options: FFButtonOptions(
                  width: 239.0,
                  height: 50.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily: 'Prompt',
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        letterSpacing: 0.0,
                      ),
                  elevation: 0.0,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
