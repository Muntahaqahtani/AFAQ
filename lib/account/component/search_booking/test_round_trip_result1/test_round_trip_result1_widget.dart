import '/backend/backend.dart';
import '/components/no_available_flights_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'test_round_trip_result1_model.dart';
export 'test_round_trip_result1_model.dart';

class TestRoundTripResult1Widget extends StatefulWidget {
  const TestRoundTripResult1Widget({
    super.key,
    required this.origin,
    required this.destination,
    required this.departureDate,
    required this.totalPassenger,
    required this.cabinclass,
    required this.arrivalDate,
  });

  final String? origin;
  final String? destination;
  final DateTime? departureDate;
  final int? totalPassenger;
  final String? cabinclass;
  final DateTime? arrivalDate;

  @override
  State<TestRoundTripResult1Widget> createState() =>
      _TestRoundTripResult1WidgetState();
}

class _TestRoundTripResult1WidgetState
    extends State<TestRoundTripResult1Widget> {
  late TestRoundTripResult1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TestRoundTripResult1Model());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (widget.cabinclass == 'Economy') {
        _model.searchsuccess4 = await queryAirlinesDatasetRecordOnce(
          queryBuilder: (airlinesDatasetRecord) => airlinesDatasetRecord
              .where(
                'OriginAirportID',
                isEqualTo: widget.origin,
              )
              .where(
                'DestinationAirportID',
                isEqualTo: widget.destination,
              )
              .where(
                'DepartureDate',
                isEqualTo: widget.departureDate,
              )
              .where(
                'ecoCapacity',
                isGreaterThanOrEqualTo: widget.totalPassenger,
              ),
        );
      } else if (widget.cabinclass == 'Buisiness') {
        _model.searchsuccess5 = await queryAirlinesDatasetRecordOnce(
          queryBuilder: (airlinesDatasetRecord) => airlinesDatasetRecord
              .where(
                'OriginAirportID',
                isEqualTo: widget.origin,
              )
              .where(
                'DestinationAirportID',
                isEqualTo: widget.destination,
              )
              .where(
                'DepartureDate',
                isEqualTo: widget.departureDate,
              )
              .where(
                'businessCapacity',
                isGreaterThanOrEqualTo: widget.totalPassenger,
              ),
        );
      } else {
        _model.searchsuccess6 = await queryAirlinesDatasetRecordOnce(
          queryBuilder: (airlinesDatasetRecord) => airlinesDatasetRecord
              .where(
                'OriginAirportID',
                isEqualTo: widget.origin,
              )
              .where(
                'DestinationAirportID',
                isEqualTo: widget.destination,
              )
              .where(
                'DepartureDate',
                isEqualTo: widget.departureDate,
              )
              .where(
                'FirstCapacity',
                isGreaterThanOrEqualTo: widget.totalPassenger,
              ),
        );
      }

      if (!((_model.searchsuccess4 != null &&
              (_model.searchsuccess4)!.isNotEmpty) ||
          (_model.searchsuccess5 != null &&
              (_model.searchsuccess5)!.isNotEmpty) ||
          (_model.searchsuccess6 != null &&
              (_model.searchsuccess6)!.isNotEmpty))) {
        await showModalBottomSheet(
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          enableDrag: false,
          context: context,
          builder: (context) {
            return GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
                FocusManager.instance.primaryFocus?.unfocus();
              },
              child: Padding(
                padding: MediaQuery.viewInsetsOf(context),
                child: const NoAvailableFlightsWidget(),
              ),
            );
          },
        ).then((value) => safeSetState(() {}));
      }
    });

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

    return StreamBuilder<List<AirlinesDatasetRecord>>(
      stream: queryAirlinesDatasetRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SpinKitSquareCircle(
                  color: FlutterFlowTheme.of(context).primary,
                  size: 50.0,
                ),
              ),
            ),
          );
        }
        List<AirlinesDatasetRecord>
            testRoundTripResult1AirlinesDatasetRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final testRoundTripResult1AirlinesDatasetRecord =
            testRoundTripResult1AirlinesDatasetRecordList.isNotEmpty
                ? testRoundTripResult1AirlinesDatasetRecordList.first
                : null;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(100.0),
              child: AppBar(
                backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                automaticallyImplyLeading: false,
                actions: const [],
                flexibleSpace: FlexibleSpaceBar(
                  title: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FlutterFlowIconButton(
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
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 0.0, 150.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Round-Trip ',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Prompt',
                                    fontSize: 13.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  valueOrDefault<String>(
                                    widget.origin,
                                    '\'\'',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: 'Prompt',
                                        fontSize: 22.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      5.0, 0.0, 5.0, 0.0),
                                  child: Icon(
                                    Icons.compare_arrows,
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    size: 30.0,
                                  ),
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    widget.destination,
                                    '\'\'',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: 'Prompt',
                                        fontSize: 22.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                            Text(
                              '${dateTimeFormat("Md", widget.departureDate)} - ${dateTimeFormat("Md", widget.arrivalDate)}',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Prompt',
                                    fontSize: 11.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  centerTitle: true,
                  expandedTitleScale: 1.0,
                ),
                elevation: 0.0,
              ),
            ),
            body: SafeArea(
              top: true,
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed('filter1');
                          },
                          text: 'Filter',
                          icon: Icon(
                            Icons.filter_alt_rounded,
                            color: FlutterFlowTheme.of(context).secondary,
                            size: 30.0,
                          ),
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Prompt',
                                  color: FlutterFlowTheme.of(context).primary,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 2.0,
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Select Departure Flight',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Prompt',
                                  fontSize: 15.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                3.0, 0.0, 0.0, 0.0),
                            child: Icon(
                              Icons.flight_takeoff_sharp,
                              color: FlutterFlowTheme.of(context).tertiary,
                              size: 24.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    StreamBuilder<List<AirlinesDatasetRecord>>(
                      stream: queryAirlinesDatasetRecord(
                        queryBuilder: (airlinesDatasetRecord) =>
                            airlinesDatasetRecord
                                .where(
                                  'OriginAirportID',
                                  isEqualTo: widget.origin,
                                )
                                .where(
                                  'DestinationAirportID',
                                  isEqualTo: widget.destination,
                                )
                                .where(
                                  'DepartureDate',
                                  isEqualTo: widget.departureDate,
                                )
                                .where(
                                  'FlightCapacity',
                                  isGreaterThanOrEqualTo:
                                      widget.totalPassenger,
                                ),
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: SpinKitSquareCircle(
                                color: FlutterFlowTheme.of(context).primary,
                                size: 50.0,
                              ),
                            ),
                          );
                        }
                        List<AirlinesDatasetRecord>
                            listViewAirlinesDatasetRecordList = snapshot.data!;

                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: listViewAirlinesDatasetRecordList.length,
                          itemBuilder: (context, listViewIndex) {
                            final listViewAirlinesDatasetRecord =
                                listViewAirlinesDatasetRecordList[
                                    listViewIndex];
                            return Visibility(
                              visible: () {
                                    if ((widget.cabinclass == 'First') &&
                                        (listViewAirlinesDatasetRecord
                                                .firstPrice !=
                                            -1.0) &&
                                        (listViewAirlinesDatasetRecord
                                                .firstCapacity >=
                                            widget.totalPassenger!)) {
                                      return true;
                                    } else if ((widget.cabinclass ==
                                            'Business') &&
                                        (listViewAirlinesDatasetRecord
                                                .buisnessPrice !=
                                            -1.0) &&
                                        (listViewAirlinesDatasetRecord
                                                .businessCapacity >=
                                            widget.totalPassenger!)) {
                                      return true;
                                    } else if ((widget.cabinclass ==
                                            'Economy') &&
                                        (listViewAirlinesDatasetRecord
                                                .ecoPrice !=
                                            -1.0) &&
                                        (listViewAirlinesDatasetRecord
                                                .ecoCapacity >=
                                            widget.totalPassenger!)) {
                                      return true;
                                    } else {
                                      return false;
                                    }
                                  }() ==
                                  true,
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 8.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    FFAppState().roundTrip1Price = () {
                                      if ((widget.cabinclass == 'Business') &&
                                          (listViewAirlinesDatasetRecord
                                                  .buisnessPrice !=
                                              -1.0)) {
                                        return listViewAirlinesDatasetRecord
                                            .buisnessPrice;
                                      } else if ((widget.cabinclass ==
                                              'First') &&
                                          (listViewAirlinesDatasetRecord
                                                  .firstPrice !=
                                              -1.0)) {
                                        return listViewAirlinesDatasetRecord
                                            .firstPrice;
                                      } else {
                                        return listViewAirlinesDatasetRecord
                                            .ecoPrice;
                                      }
                                    }();
                                    safeSetState(() {});

                                    context.pushNamed(
                                      'testRoundTripResult2',
                                      queryParameters: {
                                        'origin': serializeParam(
                                          widget.destination,
                                          ParamType.String,
                                        ),
                                        'destination': serializeParam(
                                          widget.origin,
                                          ParamType.String,
                                        ),
                                        'departureDate': serializeParam(
                                          widget.arrivalDate,
                                          ParamType.DateTime,
                                        ),
                                        'totalPassenger': serializeParam(
                                          FFAppState().totalSelectedPassengers,
                                          ParamType.int,
                                        ),
                                        'cabinclass': serializeParam(
                                          widget.cabinclass,
                                          ParamType.String,
                                        ),
                                        'departureDco': serializeParam(
                                          listViewAirlinesDatasetRecord,
                                          ParamType.Document,
                                        ),
                                      }.withoutNulls,
                                      extra: <String, dynamic>{
                                        'departureDco':
                                            listViewAirlinesDatasetRecord,
                                      },
                                    );
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(8.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          3.0, 3.0, 3.0, 3.0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: Image.network(
                                                      listViewAirlinesDatasetRecord
                                                          .airlineImage,
                                                      width: 58.0,
                                                      height: 76.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          3.0, 3.0, 3.0, 3.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        dateTimeFormat(
                                                            "Hm",
                                                            listViewAirlinesDatasetRecord
                                                                .departureTime!),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .titleLarge
                                                            .override(
                                                              fontFamily:
                                                                  'Outfit',
                                                              color: const Color(
                                                                  0xFF14181B),
                                                              fontSize: 16.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    4.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          listViewAirlinesDatasetRecord
                                                              .originAirportID,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                color: const Color(
                                                                    0xFF57636C),
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              const Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          2.0, 3.0, 3.0, 3.0),
                                                  child: Icon(
                                                    Icons.flight,
                                                    color: Color(0xFF57636C),
                                                    size: 35.0,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        3.0, 3.0, 3.0, 3.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      dateTimeFormat(
                                                          "Hm",
                                                          listViewAirlinesDatasetRecord
                                                              .arrivalTime!),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .titleLarge
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            color: const Color(
                                                                0xFF14181B),
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  4.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        listViewAirlinesDatasetRecord
                                                            .destinationAirportID,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .labelSmall
                                                            .override(
                                                              fontFamily:
                                                                  'Plus Jakarta Sans',
                                                              color: const Color(
                                                                  0xFF57636C),
                                                              fontSize: 12.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                            ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          3.0, 3.0, 0.0, 3.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        '${() {
                                                          if ((widget.cabinclass ==
                                                                  'Business') &&
                                                              (listViewAirlinesDatasetRecord
                                                                      .buisnessPrice !=
                                                                  -1.0)) {
                                                            return listViewAirlinesDatasetRecord
                                                                .buisnessPrice
                                                                .toString();
                                                          } else if ((widget
                                                                      .cabinclass ==
                                                                  'First') &&
                                                              (listViewAirlinesDatasetRecord
                                                                      .firstPrice !=
                                                                  -1.0)) {
                                                            return listViewAirlinesDatasetRecord
                                                                .firstPrice
                                                                .toString();
                                                          } else {
                                                            return listViewAirlinesDatasetRecord
                                                                .ecoPrice
                                                                .toString();
                                                          }
                                                        }()} SR',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Prompt',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 1.0),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      5.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            'Price For 1 Passenger',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Prompt',
                                                                  fontSize: 9.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ]
                                                        .divide(const SizedBox(
                                                            height: 10.0))
                                                        .addToStart(const SizedBox(
                                                            height: 10.0)),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, -1.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 10.0, 0.0),
                                            child: Text(
                                              listViewAirlinesDatasetRecord
                                                  .flightDuration,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Prompt',
                                                        fontSize: 10.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, -1.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 10.0, 0.0),
                                            child: Text(
                                              '${() {
                                                if (FFAppState()
                                                        .selectedCabinClass ==
                                                    'Economy') {
                                                  return listViewAirlinesDatasetRecord
                                                      .ecoCapacity
                                                      .toString();
                                                } else if (FFAppState()
                                                        .selectedCabinClass ==
                                                    'Business') {
                                                  return listViewAirlinesDatasetRecord
                                                      .businessCapacity
                                                      .toString();
                                                } else {
                                                  return listViewAirlinesDatasetRecord
                                                      .firstCapacity
                                                      .toString();
                                                }
                                              }()} Seat(s) Available',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Prompt',
                                                        color:
                                                            const Color(0xFFA40000),
                                                        fontSize: 9.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
