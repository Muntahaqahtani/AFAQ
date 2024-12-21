import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'add_extra_luggage_model.dart';
export 'add_extra_luggage_model.dart';

class AddExtraLuggageWidget extends StatefulWidget {
  const AddExtraLuggageWidget({
    super.key,
    required this.flightBookingDoc,
    this.userDoc,
  });

  final AirlinesDatasetRecord? flightBookingDoc;
  final FlightBookingRecord? userDoc;

  @override
  State<AddExtraLuggageWidget> createState() => _AddExtraLuggageWidgetState();
}

class _AddExtraLuggageWidgetState extends State<AddExtraLuggageWidget> {
  late AddExtraLuggageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddExtraLuggageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 70.0,
            icon: Icon(
              Icons.chevron_left,
              color: FlutterFlowTheme.of(context).primary,
              size: 40.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Add extra luggage',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Poppins',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 24.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
          ),
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Divider(
                      height: 70.0,
                      thickness: 2.0,
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, -1.0),
                      child: Text(
                        'Save money by adding extra-luggage Online, \navoiding higher fees at the airport ',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                    Divider(
                      height: 50.0,
                      thickness: 2.0,
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    const Icon(
                      Icons.backpack,
                      color: Color(0xFFBB7A80),
                      size: 100.0,
                    ),
                    Text(
                      '< 15 kg',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Prompt',
                            letterSpacing: 0.0,
                          ),
                    ),
                    Container(
                      width: 120.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        shape: BoxShape.rectangle,
                      ),
                      child: FlutterFlowCountController(
                        decrementIconBuilder: (enabled) => Icon(
                          Icons.remove_rounded,
                          color: enabled
                              ? FlutterFlowTheme.of(context).secondaryText
                              : FlutterFlowTheme.of(context).alternate,
                          size: 24.0,
                        ),
                        incrementIconBuilder: (enabled) => Icon(
                          Icons.add_rounded,
                          color: enabled
                              ? FlutterFlowTheme.of(context).primary
                              : FlutterFlowTheme.of(context).alternate,
                          size: 24.0,
                        ),
                        countBuilder: (count) => Text(
                          count.toString(),
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Prompt',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        count: _model.countController15Value ??= 0,
                        updateCount: (count) => safeSetState(
                            () => _model.countController15Value = count),
                        stepSize: 1,
                        minimum: 0,
                        maximum: 1,
                        contentPadding: const EdgeInsetsDirectional.fromSTEB(
                            12.0, 0.0, 12.0, 0.0),
                      ),
                    ),
                    Text(
                      'price: 70 SR',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Prompt',
                            letterSpacing: 0.0,
                          ),
                    ),
                    Divider(
                      height: 50.0,
                      thickness: 2.0,
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    const Icon(
                      Icons.work_outline,
                      color: Color(0xFFBB7A80),
                      size: 100.0,
                    ),
                    Text(
                      '15 kg - 20 kg',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Prompt',
                            letterSpacing: 0.0,
                          ),
                    ),
                    Container(
                      width: 120.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        shape: BoxShape.rectangle,
                      ),
                      child: FlutterFlowCountController(
                        decrementIconBuilder: (enabled) => Icon(
                          Icons.remove_rounded,
                          color: enabled
                              ? FlutterFlowTheme.of(context).secondaryText
                              : FlutterFlowTheme.of(context).alternate,
                          size: 24.0,
                        ),
                        incrementIconBuilder: (enabled) => Icon(
                          Icons.add_rounded,
                          color: enabled
                              ? FlutterFlowTheme.of(context).primary
                              : FlutterFlowTheme.of(context).alternate,
                          size: 24.0,
                        ),
                        countBuilder: (count) => Text(
                          count.toString(),
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Prompt',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        count: _model.countController20Value ??= 0,
                        updateCount: (count) => safeSetState(
                            () => _model.countController20Value = count),
                        stepSize: 1,
                        minimum: 0,
                        maximum: 1,
                        contentPadding: const EdgeInsetsDirectional.fromSTEB(
                            12.0, 0.0, 12.0, 0.0),
                      ),
                    ),
                    Text(
                      'price: 115 SR',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Prompt',
                            letterSpacing: 0.0,
                          ),
                    ),
                    Divider(
                      height: 50.0,
                      thickness: 2.0,
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    const Icon(
                      Icons.luggage_outlined,
                      color: Color(0xFFBB7A80),
                      size: 100.0,
                    ),
                    Text(
                      '> 20 kg ',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Prompt',
                            letterSpacing: 0.0,
                          ),
                    ),
                    Container(
                      width: 120.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        shape: BoxShape.rectangle,
                      ),
                      child: FlutterFlowCountController(
                        decrementIconBuilder: (enabled) => Icon(
                          Icons.remove_rounded,
                          color: enabled
                              ? FlutterFlowTheme.of(context).secondaryText
                              : FlutterFlowTheme.of(context).alternate,
                          size: 24.0,
                        ),
                        incrementIconBuilder: (enabled) => Icon(
                          Icons.add_rounded,
                          color: enabled
                              ? FlutterFlowTheme.of(context).primary
                              : FlutterFlowTheme.of(context).alternate,
                          size: 24.0,
                        ),
                        countBuilder: (count) => Text(
                          count.toString(),
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Prompt',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        count: _model.countController25Value ??= 0,
                        updateCount: (count) => safeSetState(
                            () => _model.countController25Value = count),
                        stepSize: 1,
                        minimum: 0,
                        maximum: 1,
                        contentPadding: const EdgeInsetsDirectional.fromSTEB(
                            12.0, 0.0, 12.0, 0.0),
                      ),
                    ),
                    Text(
                      'price: 160 SR',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Prompt',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ].addToEnd(const SizedBox(height: 150.0)),
                ),
              ),
              const Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Stack(
                  children: [],
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: Container(
                  width: double.infinity,
                  height: 150.0,
                  decoration: BoxDecoration(
                    color: const Color(0xE9DAD5C8),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(30.0, 40.0, 30.0, 40.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        FFAppState().countController15 =
                            _model.countController15Value!;
                        FFAppState().countController20 =
                            _model.countController20Value!;
                        FFAppState().countController25 =
                            _model.countController25Value!;
                        FFAppState().totalExtraLuggage =
                            FFAppState().countController15 +
                                FFAppState().countController20 +
                                FFAppState().countController25;
                        FFAppState().priceLuggage = functions.priceLuggage(
                            FFAppState().countController15,
                            FFAppState().countController20,
                            FFAppState().countController25);
                        safeSetState(() {});
                        if (functions
                                .priceLuggage(
                                    FFAppState().countController15,
                                    FFAppState().countController20,
                                    FFAppState().countController25)
                                .toString() ==
                            '0') {
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: const Text('Number of luggage'),
                                content: const Text('you must add luggage'),
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
                          context.pushNamed(
                            'ExtraLuggageDetails',
                            queryParameters: {
                              'totalExtraLuggage': serializeParam(
                                FFAppState().totalExtraLuggage,
                                ParamType.int,
                              ),
                              'priceLuggage': serializeParam(
                                FFAppState().priceLuggage,
                                ParamType.int,
                              ),
                              'flightBookingDoc': serializeParam(
                                widget.flightBookingDoc,
                                ParamType.Document,
                              ),
                              'userDoc': serializeParam(
                                widget.userDoc,
                                ParamType.Document,
                              ),
                            }.withoutNulls,
                            extra: <String, dynamic>{
                              'flightBookingDoc': widget.flightBookingDoc,
                              'userDoc': widget.userDoc,
                            },
                          );
                        }
                      },
                      text: 'Continue',
                      options: FFButtonOptions(
                        width: 300.0,
                        height: 40.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: const Color(0xFF2B363C),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 24.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                        elevation: 0.0,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
