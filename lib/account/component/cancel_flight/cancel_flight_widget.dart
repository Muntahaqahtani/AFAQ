import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'cancel_flight_model.dart';
export 'cancel_flight_model.dart';

class CancelFlightWidget extends StatefulWidget {
  const CancelFlightWidget({
    super.key,
    required this.flightDoc,
    required this.flightBookingDoc,
  });

  final AirlinesDatasetRecord? flightDoc;
  final FlightBookingRecord? flightBookingDoc;

  @override
  State<CancelFlightWidget> createState() => _CancelFlightWidgetState();
}

class _CancelFlightWidgetState extends State<CancelFlightWidget> {
  late CancelFlightModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CancelFlightModel());

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
            'Cancel Flight',
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
                    value: _model.checkboxValue ??= false,
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
                    'I am familiar with Flight Cancellation, the cancellation fee will be deducted from the total amount.  ',
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
            'Are you sure to cancel the flight?',
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
                  if (_model.checkboxValue == true) {
                    if (widget.flightBookingDoc?.seatType == 'Economy') {
                      await Future.wait([
                        Future(() async {
                          await widget.flightBookingDoc!.reference
                              .update(createFlightBookingRecordData(
                            flightCancel: true,
                          ));
                        }),
                        Future(() async {
                          await widget.flightDoc!.reference.update({
                            ...mapToFirestore(
                              {
                                'ecoCapacity': FieldValue.increment(widget
                                    .flightBookingDoc!.numbersOfPassengers),
                              },
                            ),
                          });
                        }),
                      ]);
                      Navigator.pop(context);
                    } else if (widget.flightBookingDoc?.seatType ==
                        'Business') {
                      await Future.wait([
                        Future(() async {
                          await widget.flightBookingDoc!.reference
                              .update(createFlightBookingRecordData(
                            flightCancel: true,
                          ));
                        }),
                        Future(() async {
                          await widget.flightDoc!.reference.update({
                            ...mapToFirestore(
                              {
                                'businessCapacity': FieldValue.increment(widget
                                    .flightBookingDoc!.numbersOfPassengers),
                              },
                            ),
                          });
                        }),
                      ]);
                      Navigator.pop(context);
                    } else {
                      await Future.wait([
                        Future(() async {
                          await widget.flightBookingDoc!.reference
                              .update(createFlightBookingRecordData(
                            flightCancel: true,
                          ));
                        }),
                        Future(() async {
                          await widget.flightDoc!.reference.update({
                            ...mapToFirestore(
                              {
                                'FirstCapacity': FieldValue.increment(widget
                                    .flightBookingDoc!.numbersOfPassengers),
                              },
                            ),
                          });
                        }),
                      ]);
                      Navigator.pop(context);
                    }

                    context.safePop();
                  } else {
                    await showDialog(
                      context: context,
                      builder: (alertDialogContext) {
                        return AlertDialog(
                          title: const Text('Cancel'),
                          content: const Text('You have to check on checkbox'),
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
                  }
                },
                text: 'Cancel',
                options: FFButtonOptions(
                  width: 110.0,
                  height: 40.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: const Color(0xFF2B363C),
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Prompt',
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        letterSpacing: 0.0,
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
