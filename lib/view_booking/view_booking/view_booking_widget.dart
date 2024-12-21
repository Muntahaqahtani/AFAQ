import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/no_bookings_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'view_booking_model.dart';
export 'view_booking_model.dart';

class ViewBookingWidget extends StatefulWidget {
  const ViewBookingWidget({super.key});

  @override
  State<ViewBookingWidget> createState() => _ViewBookingWidgetState();
}

class _ViewBookingWidgetState extends State<ViewBookingWidget>
    with TickerProviderStateMixin {
  late ViewBookingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViewBookingModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.querysuccess = await queryFlightBookingRecordOnce(
        queryBuilder: (flightBookingRecord) => flightBookingRecord
            .where(
              'accountID',
              isEqualTo: currentUserReference,
            )
            .where(
              'DateBooked',
              isGreaterThanOrEqualTo: getCurrentTimestamp,
            )
            .where(
              'FlightCancel',
              isEqualTo: false,
            ),
      );
      if ((_model.querysuccess != null && (_model.querysuccess)!.isNotEmpty) ==
          false) {
        await showModalBottomSheet(
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          context: context,
          builder: (context) {
            return GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
                FocusManager.instance.primaryFocus?.unfocus();
              },
              child: Padding(
                padding: MediaQuery.viewInsetsOf(context),
                child: NoBookingsWidget(
                  prev: FFAppState().isPrevious,
                ),
              ),
            );
          },
        ).then((value) => safeSetState(() {}));
      }
    });

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
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

    return StreamBuilder<List<FlightBookingRecord>>(
      stream: queryFlightBookingRecord(
        queryBuilder: (flightBookingRecord) => flightBookingRecord
            .where(
              'accountID',
              isEqualTo: currentUserReference,
            )
            .where(
              'FlightCancel',
              isNotEqualTo: true,
            ),
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
        List<FlightBookingRecord> viewBookingFlightBookingRecordList =
            snapshot.data!;

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
                  await Future.wait([
                    Future(() async {
                      context.pop();
                    }),
                    Future(() async {
                      FFAppState().isPrevious = false;
                      safeSetState(() {});
                    }),
                  ]);
                },
              ),
              title: Text(
                'My Flight',
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
            body: SafeArea(
              top: true,
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Align(
                            alignment: const Alignment(0.0, 0),
                            child: FlutterFlowButtonTabBar(
                              useToggleButtonStyle: false,
                              labelStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Prompt',
                                    letterSpacing: 0.0,
                                  ),
                              unselectedLabelStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Prompt',
                                    letterSpacing: 0.0,
                                  ),
                              labelColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              unselectedLabelColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              backgroundColor:
                                  FlutterFlowTheme.of(context).primary,
                              unselectedBackgroundColor: const Color(0xFFF2F0EC),
                              borderColor: FlutterFlowTheme.of(context).primary,
                              unselectedBorderColor: const Color(0xFFF2F0EC),
                              borderWidth: 2.0,
                              borderRadius: 8.0,
                              elevation: 2.0,
                              buttonMargin: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 8.0, 0.0),
                              tabs: const [
                                Tab(
                                  text: 'Active',
                                ),
                                Tab(
                                  text: 'Previous',
                                ),
                              ],
                              controller: _model.tabBarController,
                              onTap: (i) async {
                                [
                                  () async {
                                    await Future.wait([
                                      Future(() async {
                                        FFAppState().isPrevious = false;
                                      }),
                                      Future(() async {
                                        if (viewBookingFlightBookingRecordList
                                                .where((e) =>
                                                    e.dateBooked!
                                                        .secondsSinceEpoch >=
                                                    getCurrentTimestamp
                                                        .secondsSinceEpoch)
                                                .toList().isEmpty) {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            context: context,
                                            builder: (context) {
                                              return GestureDetector(
                                                onTap: () {
                                                  FocusScope.of(context)
                                                      .unfocus();
                                                  FocusManager
                                                      .instance.primaryFocus
                                                      ?.unfocus();
                                                },
                                                child: Padding(
                                                  padding:
                                                      MediaQuery.viewInsetsOf(
                                                          context),
                                                  child: const NoBookingsWidget(),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        } else {
                                          return;
                                        }
                                      }),
                                    ]);
                                  },
                                  () async {
                                    await Future.wait([
                                      Future(() async {
                                        FFAppState().isPrevious = true;
                                      }),
                                      Future(() async {
                                        if (viewBookingFlightBookingRecordList
                                                .where((e) =>
                                                    e.dateBooked!
                                                        .secondsSinceEpoch <
                                                    getCurrentTimestamp
                                                        .secondsSinceEpoch)
                                                .toList().isEmpty) {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            context: context,
                                            builder: (context) {
                                              return GestureDetector(
                                                onTap: () {
                                                  FocusScope.of(context)
                                                      .unfocus();
                                                  FocusManager
                                                      .instance.primaryFocus
                                                      ?.unfocus();
                                                },
                                                child: Padding(
                                                  padding:
                                                      MediaQuery.viewInsetsOf(
                                                          context),
                                                  child: NoBookingsWidget(
                                                    prev:
                                                        FFAppState().isPrevious,
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        } else {
                                          return;
                                        }
                                      }),
                                    ]);
                                  }
                                ][i]();
                              },
                            ),
                          ),
                          Expanded(
                            child: TabBarView(
                              controller: _model.tabBarController,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, -1.0),
                                  child: Builder(
                                    builder: (context) {
                                      final bookingsLis =
                                          viewBookingFlightBookingRecordList
                                              .where((e) =>
                                                  getCurrentTimestamp
                                                      .secondsSinceEpoch <=
                                                  e.dateBooked!
                                                      .secondsSinceEpoch)
                                              .toList()
                                              .sortedList(
                                                  keyOf: (e) => e.dateBooked!
                                                      .secondsSinceEpoch,
                                                  desc: true)
                                              .toList();

                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: bookingsLis.length,
                                        itemBuilder:
                                            (context, bookingsLisIndex) {
                                          final bookingsLisItem =
                                              bookingsLis[bookingsLisIndex];
                                          return Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 20.0, 15.0, 0.0),
                                            child: StreamBuilder<
                                                AirlinesDatasetRecord>(
                                              stream: AirlinesDatasetRecord
                                                  .getDocument(
                                                      bookingsLisItem.flightID!)
                                                ..listen(
                                                    (containerAirlinesDatasetRecord) async {
                                                  if (_model.containerPreviousSnapshot !=
                                                          null &&
                                                      !const AirlinesDatasetRecordDocumentEquality().equals(
                                                          containerAirlinesDatasetRecord,
                                                          _model
                                                              .containerPreviousSnapshot)) {}
                                                  _model.containerPreviousSnapshot =
                                                      containerAirlinesDatasetRecord;
                                                }),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child:
                                                          SpinKitSquareCircle(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        size: 50.0,
                                                      ),
                                                    ),
                                                  );
                                                }

                                                final containerAirlinesDatasetRecord =
                                                    snapshot.data!;

                                                return InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed(
                                                      'viewBookingDetails',
                                                      queryParameters: {
                                                        'flightDetails':
                                                            serializeParam(
                                                          containerAirlinesDatasetRecord,
                                                          ParamType.Document,
                                                        ),
                                                        'flightBookingID':
                                                            serializeParam(
                                                          bookingsLisItem
                                                              .bookingID,
                                                          ParamType.String,
                                                        ),
                                                        'flightBookingDoc':
                                                            serializeParam(
                                                          bookingsLisItem,
                                                          ParamType.Document,
                                                        ),
                                                      }.withoutNulls,
                                                      extra: <String, dynamic>{
                                                        'flightDetails':
                                                            containerAirlinesDatasetRecord,
                                                        'flightBookingDoc':
                                                            bookingsLisItem,
                                                      },
                                                    );
                                                  },
                                                  child: Material(
                                                    color: Colors.transparent,
                                                    elevation: 3.0,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: Container(
                                                      width: double.infinity,
                                                      height: 100.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            const Color(0xFFF2F0EC),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        border: Border.all(
                                                          color:
                                                              const Color(0xFFF2F0EC),
                                                        ),
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child:
                                                                Image.network(
                                                              containerAirlinesDatasetRecord
                                                                  .airlineImage,
                                                              width: 75.0,
                                                              height: 76.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  containerAirlinesDatasetRecord
                                                                      .originCountry,
                                                                  '00:00',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      color: const Color(
                                                                          0xFF14181B),
                                                                      fontSize:
                                                                          16.0,
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
                                                                  containerAirlinesDatasetRecord
                                                                      .originAirportID,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Plus Jakarta Sans',
                                                                        color: const Color(
                                                                            0xFF57636C),
                                                                        fontSize:
                                                                            12.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          const Icon(
                                                            Icons.flight,
                                                            color: Color(
                                                                0xFF57636C),
                                                            size: 35.0,
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  containerAirlinesDatasetRecord
                                                                      .destinationCountry,
                                                                  '00:00',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      color: const Color(
                                                                          0xFF14181B),
                                                                      fontSize:
                                                                          16.0,
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
                                                                            8.0,
                                                                            4.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  containerAirlinesDatasetRecord
                                                                      .destinationAirportID,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Plus Jakarta Sans',
                                                                        color: const Color(
                                                                            0xFF57636C),
                                                                        fontSize:
                                                                            12.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              dateTimeFormat(
                                                                  "Md",
                                                                  containerAirlinesDatasetRecord
                                                                      .departureTime!),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Prompt',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                                Builder(
                                  builder: (context) {
                                    final bookingsList =
                                        viewBookingFlightBookingRecordList
                                            .where((e) =>
                                                getCurrentTimestamp
                                                    .secondsSinceEpoch >
                                                e.dateBooked!.secondsSinceEpoch)
                                            .toList()
                                            .sortedList(
                                                keyOf: (e) => e.dateBooked!
                                                    .secondsSinceEpoch,
                                                desc: true)
                                            .toList();

                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: bookingsList.length,
                                      itemBuilder:
                                          (context, bookingsListIndex) {
                                        final bookingsListItem =
                                            bookingsList[bookingsListIndex];
                                        return Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 20.0, 15.0, 0.0),
                                          child: StreamBuilder<
                                              AirlinesDatasetRecord>(
                                            stream: AirlinesDatasetRecord
                                                .getDocument(
                                                    bookingsListItem.flightID!),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child: SpinKitSquareCircle(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      size: 50.0,
                                                    ),
                                                  ),
                                                );
                                              }

                                              final containerAirlinesDatasetRecord =
                                                  snapshot.data!;

                                              return InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.pushNamed(
                                                    'viewBookingDetails',
                                                    queryParameters: {
                                                      'flightDetails':
                                                          serializeParam(
                                                        containerAirlinesDatasetRecord,
                                                        ParamType.Document,
                                                      ),
                                                      'flightBookingID':
                                                          serializeParam(
                                                        bookingsListItem
                                                            .bookingID,
                                                        ParamType.String,
                                                      ),
                                                      'flightBookingDoc':
                                                          serializeParam(
                                                        bookingsListItem,
                                                        ParamType.Document,
                                                      ),
                                                    }.withoutNulls,
                                                    extra: <String, dynamic>{
                                                      'flightDetails':
                                                          containerAirlinesDatasetRecord,
                                                      'flightBookingDoc':
                                                          bookingsListItem,
                                                    },
                                                  );
                                                },
                                                child: Material(
                                                  color: Colors.transparent,
                                                  elevation: 3.0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 100.0,
                                                    decoration: BoxDecoration(
                                                      color: const Color(0xFFF2F0EC),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5.0,
                                                                  12.0,
                                                                  5.0,
                                                                  12.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child:
                                                                Image.network(
                                                              containerAirlinesDatasetRecord
                                                                  .airlineImage,
                                                              width: 58.0,
                                                              height: 76.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  containerAirlinesDatasetRecord
                                                                      .originCountry,
                                                                  '00:00',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      color: const Color(
                                                                          0xFF14181B),
                                                                      fontSize:
                                                                          16.0,
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
                                                                  containerAirlinesDatasetRecord
                                                                      .originAirportID,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Plus Jakarta Sans',
                                                                        color: const Color(
                                                                            0xFF57636C),
                                                                        fontSize:
                                                                            12.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          const Icon(
                                                            Icons.flight,
                                                            color: Color(
                                                                0xFF57636C),
                                                            size: 35.0,
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  containerAirlinesDatasetRecord
                                                                      .destinationCountry,
                                                                  '00:00',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      color: const Color(
                                                                          0xFF14181B),
                                                                      fontSize:
                                                                          16.0,
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
                                                                            8.0,
                                                                            4.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  containerAirlinesDatasetRecord
                                                                      .destinationAirportID,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Plus Jakarta Sans',
                                                                        color: const Color(
                                                                            0xFF57636C),
                                                                        fontSize:
                                                                            12.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
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
  }
}
