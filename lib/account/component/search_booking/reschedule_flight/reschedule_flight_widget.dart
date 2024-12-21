import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'reschedule_flight_model.dart';
export 'reschedule_flight_model.dart';

class RescheduleFlightWidget extends StatefulWidget {
  const RescheduleFlightWidget({
    super.key,
    this.origin,
    this.destination,
    this.depDate,
    this.totalPassenger,
    this.cabinClass,
    this.flightBookingRef,
    this.airlineReference,
    this.flightdetails,
    this.flightID,
    this.orignalPrice,
    this.airlinename,
  });

  final String? origin;
  final String? destination;
  final DateTime? depDate;
  final int? totalPassenger;
  final String? cabinClass;
  final FlightBookingRecord? flightBookingRef;
  final AirlinesDatasetRecord? airlineReference;
  final AirlinesDatasetRecord? flightdetails;
  final String? flightID;
  final double? orignalPrice;
  final String? airlinename;

  @override
  State<RescheduleFlightWidget> createState() => _RescheduleFlightWidgetState();
}

class _RescheduleFlightWidgetState extends State<RescheduleFlightWidget> {
  late RescheduleFlightModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RescheduleFlightModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Reschedule flight',
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Prompt',
                  fontSize: 26.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                ),
          ),
          Divider(
            thickness: 2.0,
            color: FlutterFlowTheme.of(context).primaryBackground,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Theme(
                  data: ThemeData(
                    checkboxTheme: CheckboxThemeData(
                      visualDensity: VisualDensity.compact,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                    ),
                    unselectedWidgetColor:
                        FlutterFlowTheme.of(context).secondaryText,
                  ),
                  child: Checkbox(
                    value: _model.checkboxValue ??= true,
                    onChanged: (newValue) async {
                      safeSetState(() => _model.checkboxValue = newValue!);
                    },
                    side: BorderSide(
                      width: 2,
                      color: FlutterFlowTheme.of(context).secondaryText,
                    ),
                    activeColor: FlutterFlowTheme.of(context).tertiary,
                    checkColor: FlutterFlowTheme.of(context).info,
                  ),
                ),
                Flexible(
                  child: Text(
                    'I am familiar that Flight reschedule are subject to the regulations outlined in the Airline’s reschedule policy.  ',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Prompt',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 2.0,
            color: FlutterFlowTheme.of(context).primaryBackground,
          ),
          Text(
            'Are you sure to reschedule the flight?',
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Prompt',
                  color: const Color(0xFFAA252D),
                  letterSpacing: 0.0,
                ),
          ),
          Divider(
            thickness: 2.0,
            color: FlutterFlowTheme.of(context).primaryBackground,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FFButtonWidget(
                onPressed: () async {
                  if (_model.checkboxValue == false) {
                    await showDialog(
                      context: context,
                      builder: (alertDialogContext) {
                        return AlertDialog(
                          title: const Text('Alert'),
                          content: const Text('Please confirm our Policies'),
                          actions: [
                            TextButton(
                              onPressed: () =>
                                  Navigator.pop(alertDialogContext),
                              child: const Text('Ok'),
                            ),
                          ],
                        );
                      },
                    );
                  } else {
                    await Future.wait([
                      Future(() async {
                        FFAppState().isRescheduled = true;
                        safeSetState(() {});
                      }),
                      Future(() async {
                        context.pushNamed(
                          'newReschedeFlight',
                          queryParameters: {
                            'origin': serializeParam(
                              widget.origin,
                              ParamType.String,
                            ),
                            'destination': serializeParam(
                              widget.destination,
                              ParamType.String,
                            ),
                            'cabinClass': serializeParam(
                              widget.cabinClass,
                              ParamType.String,
                            ),
                            'totalPassengers': serializeParam(
                              widget.totalPassenger,
                              ParamType.int,
                            ),
                            'airlineDoc': serializeParam(
                              widget.airlineReference,
                              ParamType.Document,
                            ),
                            'flightBooking': serializeParam(
                              widget.flightBookingRef,
                              ParamType.Document,
                            ),
                            'departureDate': serializeParam(
                              widget.depDate,
                              ParamType.DateTime,
                            ),
                            'airlineType': serializeParam(
                              widget.airlinename,
                              ParamType.String,
                            ),
                          }.withoutNulls,
                          extra: <String, dynamic>{
                            'airlineDoc': widget.airlineReference,
                            'flightBooking': widget.flightBookingRef,
                          },
                        );
                      }),
                    ]);
                  }
                },
                text: 'Reschedule',
                options: FFButtonOptions(
                  width: 125.0,
                  height: 40.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: const Color(0xFF2B363C),
                  textStyle: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily: 'Prompt',
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                      ),
                  elevation: 0.0,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  context.safePop();
                },
                text: 'Back',
                options: FFButtonOptions(
                  width: 110.0,
                  height: 40.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Prompt',
                        color: FlutterFlowTheme.of(context).primary,
                        letterSpacing: 0.0,
                      ),
                  elevation: 0.0,
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primary,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
