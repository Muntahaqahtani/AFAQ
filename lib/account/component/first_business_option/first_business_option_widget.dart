import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'first_business_option_model.dart';
export 'first_business_option_model.dart';

class FirstBusinessOptionWidget extends StatefulWidget {
  const FirstBusinessOptionWidget({
    super.key,
    required this.cabinClass,
    required this.totalPassengers,
    this.departureDoc,
    this.arriavalDoc,
  });

  final String? cabinClass;
  final int? totalPassengers;
  final AirlinesDatasetRecord? departureDoc;
  final AirlinesDatasetRecord? arriavalDoc;

  @override
  State<FirstBusinessOptionWidget> createState() =>
      _FirstBusinessOptionWidgetState();
}

class _FirstBusinessOptionWidgetState extends State<FirstBusinessOptionWidget> {
  late FirstBusinessOptionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FirstBusinessOptionModel());

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

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: 397.0,
          height: 576.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.safePop();
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 26.0,
                  ),
                ),
                Text(
                  'Select your most suitable flight option',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Prompt',
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed(
                        'TravelRequirements',
                        queryParameters: {
                          'origin': serializeParam(
                            widget.departureDoc?.originCountry,
                            ParamType.String,
                          ),
                          'destination': serializeParam(
                            widget.departureDoc?.destinationCountry,
                            ParamType.String,
                          ),
                        }.withoutNulls,
                      );
                    },
                    text: 'Travel Requirement',
                    icon: Icon(
                      Icons.info,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 15.0,
                    ),
                    options: FFButtonOptions(
                      width: 360.0,
                      height: 40.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: const Color(0x82B2A59B),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Prompt',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 14.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 356.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).tertiary,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        ),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'BASIC',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Prompt',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                            Text(
                              FFAppState().tabIndex == 1
                                  ? '${(FFAppState().roundTrip1Price + FFAppState().roundTrip2Price).toString()} SR'
                                  : (widget.cabinClass == 'Business'
                                      ? '${widget.departureDoc?.buisnessPrice.toString()} SR'
                                      : '${widget.departureDoc?.firstPrice.toString()} SR'),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Prompt',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 356.0,
                      height: 257.0,
                      decoration: const BoxDecoration(
                        color: Color(0x53BB7A80),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        ),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Baggage Allowance',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Prompt',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            const Divider(
                              thickness: 2.0,
                              color: Color(0x00BB7A80),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 5.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            Icons.card_travel,
                                            color: FlutterFlowTheme.of(context)
                                                .tertiary,
                                            size: 16.0,
                                          ),
                                          Text(
                                            'Cabin Baggage',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Prompt',
                                                  fontSize: 10.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        '1 piece,12KG',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Prompt',
                                              fontSize: 10.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 5.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.luggage_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        size: 16.0,
                                      ),
                                      Text(
                                        'Checked Baggage',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Prompt',
                                              fontSize: 10.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        widget.cabinClass == 'Business'
                                            ? '2 piece,${(widget.departureDoc!.checkedBaggage.toDouble() + 30).toString()}KG'
                                            : '3 piece,${(widget.departureDoc!.checkedBaggage.toDouble() + 40).toString()}KG',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Prompt',
                                              fontSize: 10.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 350.0,
                              child: Divider(
                                height: 15.0,
                                thickness: 0.5,
                                color: FlutterFlowTheme.of(context).tertiary,
                              ),
                            ),
                            Text(
                              'Change & Cancellation',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Prompt',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            const Divider(
                              thickness: 2.0,
                              color: Color(0x00EFEADE),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 5.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.cached,
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        size: 16.0,
                                      ),
                                      Text(
                                        'Change Booking',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Prompt',
                                              fontSize: 10.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Changeable without fees',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Prompt',
                                              fontSize: 10.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 5.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.cancel,
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        size: 16.0,
                                      ),
                                      Text(
                                        'Cancel Booking',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Prompt',
                                              fontSize: 10.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Refundable without fees',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Prompt',
                                              fontSize: 10.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 350.0,
                              child: Divider(
                                height: 15.0,
                                thickness: 0.5,
                                color: FlutterFlowTheme.of(context).tertiary,
                              ),
                            ),
                            Text(
                              'Flight Amenities',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Prompt',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            const Divider(
                              thickness: 2.0,
                              color: Color(0x00EFEADE),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 5.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.airline_seat_recline_normal,
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        size: 16.0,
                                      ),
                                      Text(
                                        'Seat Selection',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Prompt',
                                              fontSize: 10.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Included',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Prompt',
                                              color: const Color(0xFF707070),
                                              fontSize: 10.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 5.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.dinner_dining,
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        size: 16.0,
                                      ),
                                      Text(
                                        'Meal',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Prompt',
                                              fontSize: 10.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'MEALS',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Prompt',
                                              fontSize: 10.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 362.0,
                      height: 33.0,
                      decoration: const BoxDecoration(
                        color: Color(0x53BB7A80),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        ),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                const Icon(
                                  Icons.attach_money_rounded,
                                  color: Color(0xFFFCDE70),
                                  size: 20.0,
                                ),
                                Text(
                                  'Earn',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Prompt',
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 5.0, 0.0),
                                  child: Text(
                                    FFAppState().tabIndex == 1
                                        ? '${((FFAppState().roundTrip1Price + FFAppState().roundTrip2Price) - 1).toString()} Points'
                                        : (widget.cabinClass == 'Business'
                                            ? '${(widget.departureDoc!.buisnessPrice - 1).toString()} Points'
                                            : '${(widget.departureDoc!.firstPrice - 1).toString()} Points'),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Prompt',
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 243.0,
                      height: 43.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: FFButtonWidget(
                        onPressed: () async {
                          FFAppState().totalPrice = FFAppState().tabIndex == 1
                              ? (FFAppState().roundTrip1Price +
                                  FFAppState().roundTrip2Price)
                              : (widget.cabinClass == 'Business'
                                  ? widget.departureDoc!.buisnessPrice
                                  : widget.departureDoc!.firstPrice);
                          FFAppState().cabinBuggage = 12.0;
                          FFAppState().checkedBuggage =
                              widget.cabinClass == 'Business'
                                  ? (widget.departureDoc!.checkedBaggage
                                          .toDouble() +
                                      30)
                                  : (widget.departureDoc!.checkedBaggage
                                          .toDouble() +
                                      40);
                          FFAppState().flightchange = 0.0;
                          FFAppState().earns = FFAppState().tabIndex == 1
                              ? ((FFAppState().roundTrip1Price +
                                      FFAppState().roundTrip2Price) -
                                  1)
                              : (widget.cabinClass == 'Business'
                                  ? (widget.departureDoc!.buisnessPrice - 1)
                                  : (widget.departureDoc!.firstPrice - 1));
                          FFAppState().flightCnacelPrice = 0;
                          FFAppState().numOfCheckedBaggage =
                              widget.cabinClass == 'Business' ? 2 : 3;
                          safeSetState(() {});
                          if (FFAppState().tabIndex == 0) {
                            context.pushNamed(
                              'addPassengers',
                              queryParameters: {
                                'flightID': serializeParam(
                                  widget.departureDoc?.flightID,
                                  ParamType.String,
                                ),
                                'departureDoc': serializeParam(
                                  widget.departureDoc,
                                  ParamType.Document,
                                ),
                              }.withoutNulls,
                              extra: <String, dynamic>{
                                'departureDoc': widget.departureDoc,
                              },
                            );
                          } else {
                            context.pushNamed(
                              'addPassengers',
                              queryParameters: {
                                'flightID': serializeParam(
                                  widget.departureDoc?.flightID,
                                  ParamType.String,
                                ),
                                'departureDoc': serializeParam(
                                  widget.departureDoc,
                                  ParamType.Document,
                                ),
                                'arrivalDoc': serializeParam(
                                  widget.arriavalDoc,
                                  ParamType.Document,
                                ),
                              }.withoutNulls,
                              extra: <String, dynamic>{
                                'departureDoc': widget.departureDoc,
                                'arrivalDoc': widget.arriavalDoc,
                              },
                            );
                          }
                        },
                        text: 'Select',
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).tertiary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Prompt',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ].divide(const SizedBox(height: 10.0)),
                ),
              ].divide(const SizedBox(height: 10.0)),
            ),
          ),
        ),
      ],
    );
  }
}
