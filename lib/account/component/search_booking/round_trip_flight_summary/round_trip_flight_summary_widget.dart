import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'round_trip_flight_summary_model.dart';
export 'round_trip_flight_summary_model.dart';

class RoundTripFlightSummaryWidget extends StatefulWidget {
  const RoundTripFlightSummaryWidget({
    super.key,
    this.flightID,
    required this.departueDoc,
    required this.arrivalDoc,
  });

  final String? flightID;
  final AirlinesDatasetRecord? departueDoc;
  final AirlinesDatasetRecord? arrivalDoc;

  @override
  State<RoundTripFlightSummaryWidget> createState() =>
      _RoundTripFlightSummaryWidgetState();
}

class _RoundTripFlightSummaryWidgetState
    extends State<RoundTripFlightSummaryWidget> {
  late RoundTripFlightSummaryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RoundTripFlightSummaryModel());

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
              Icons.chevron_left_sharp,
              color: FlutterFlowTheme.of(context).primary,
              size: 40.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Flight Summary',
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Divider(
                  thickness: 2.0,
                  color: FlutterFlowTheme.of(context).primaryBackground,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      valueOrDefault<String>(
                        widget.departueDoc?.originAirportID,
                        '00',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Prompt',
                            fontSize: 24.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.arrow_forward,
                          color: FlutterFlowTheme.of(context).primary,
                          size: 24.0,
                        ),
                      ],
                    ),
                    Text(
                      valueOrDefault<String>(
                        widget.departueDoc?.destinationAirportID,
                        '00',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Prompt',
                            fontSize: 24.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ],
                ),
                Text(
                  valueOrDefault<String>(
                    dateTimeFormat(
                        "MMMMEEEEd", widget.departueDoc?.departureDate),
                    '00',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Prompt',
                        color: FlutterFlowTheme.of(context).tertiary,
                        letterSpacing: 0.0,
                      ),
                ),
                Divider(
                  thickness: 2.0,
                  color: FlutterFlowTheme.of(context).primaryBackground,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      dateTimeFormat("jm", widget.departueDoc!.departureTime!),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Prompt',
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                    Icon(
                      Icons.flight_takeoff,
                      color: FlutterFlowTheme.of(context).tertiary,
                      size: 20.0,
                    ),
                    const Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(
                          width: 70.0,
                          child: Divider(
                            thickness: 1.0,
                            color: Color(0xFF404040),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      valueOrDefault<String>(
                        widget.departueDoc?.flightDuration,
                        '00',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Prompt',
                            fontSize: 10.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                    const Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(
                          width: 70.0,
                          child: Divider(
                            thickness: 1.0,
                            color: Color(0xFF404040),
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.flight_land_outlined,
                      color: FlutterFlowTheme.of(context).tertiary,
                      size: 20.0,
                    ),
                    Text(
                      dateTimeFormat("jm", widget.departueDoc!.arrivalTime!),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Prompt',
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Container(
                    width: 330.0,
                    height: 190.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  size: 16.0,
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    widget.departueDoc?.originCountry,
                                    '00',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Prompt',
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  Icons.location_pin,
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  size: 16.0,
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    widget.departueDoc?.destinationCountry,
                                    '00',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Prompt',
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    widget.departueDoc!.airlineImage,
                                    width: 20.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    widget.departueDoc?.airlineID,
                                    '00',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Prompt',
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 2.0,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.flight,
                              color: FlutterFlowTheme.of(context).tertiary,
                              size: 16.0,
                            ),
                            StreamBuilder<List<AirportDatasetRecord>>(
                              stream: queryAirportDatasetRecord(
                                queryBuilder: (airportDatasetRecord) =>
                                    airportDatasetRecord.where(
                                  'FlightID',
                                  isEqualTo: widget.departueDoc?.flightID,
                                ),
                                singleRecord: true,
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: SpinKitSquareCircle(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 50.0,
                                      ),
                                    ),
                                  );
                                }
                                List<AirportDatasetRecord>
                                    textAirportDatasetRecordList =
                                    snapshot.data!;
                                // Return an empty Container when the item does not exist.
                                if (snapshot.data!.isEmpty) {
                                  return Container();
                                }
                                final textAirportDatasetRecord =
                                    textAirportDatasetRecordList.isNotEmpty
                                        ? textAirportDatasetRecordList.first
                                        : null;

                                return Text(
                                  'Terminal${textAirportDatasetRecord?.originTeriminal.toString()}',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Prompt',
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                      ),
                                );
                              },
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
                            Icon(
                              Icons.airline_seat_recline_normal,
                              color: FlutterFlowTheme.of(context).tertiary,
                              size: 16.0,
                            ),
                            Text(
                              valueOrDefault<String>(
                                FFAppState().selectedCabinClass,
                                '1',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Prompt',
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.airline_seat_recline_normal,
                              color: FlutterFlowTheme.of(context).tertiary,
                              size: 16.0,
                            ),
                            Text(
                              'Number Of Passengers : ${FFAppState().totalSelectedPassengers.toString()}',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Prompt',
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 1.0,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.card_travel_outlined,
                              color: FlutterFlowTheme.of(context).tertiary,
                              size: 16.0,
                            ),
                            Text(
                              (FFAppState().selectedCabinClass == 'First') ||
                                      (FFAppState().selectedCabinClass ==
                                          'Business')
                                  ? '1 piece,12KG'
                                  : '1 piece,${FFAppState().cabinBuggage.toString()}KG',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Prompt',
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 1.0,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.luggage_rounded,
                              color: FlutterFlowTheme.of(context).tertiary,
                              size: 16.0,
                            ),
                            Text(
                              FFAppState().checkedBuggage <= 0.0
                                  ? 'Checked Baggage not included'
                                  : () {
                                      if (FFAppState().selectedCabinClass ==
                                          'First') {
                                        return '${FFAppState().numOfCheckedBaggage.toString()} pieces,${FFAppState().checkedBuggage.toString()}KG';
                                      } else if (FFAppState()
                                              .selectedCabinClass ==
                                          'Business') {
                                        return '${FFAppState().numOfCheckedBaggage.toString()} pieces,${FFAppState().checkedBuggage.toString()}KG';
                                      } else {
                                        return '1 piece,${FFAppState().checkedBuggage.toString()}KG';
                                      }
                                    }(),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Prompt',
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  thickness: 2.0,
                  color: FlutterFlowTheme.of(context).primary,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      valueOrDefault<String>(
                        widget.arrivalDoc?.originAirportID,
                        '00',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Prompt',
                            fontSize: 24.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.arrow_forward,
                          color: FlutterFlowTheme.of(context).primary,
                          size: 24.0,
                        ),
                      ],
                    ),
                    Text(
                      valueOrDefault<String>(
                        widget.arrivalDoc?.destinationAirportID,
                        '00',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Prompt',
                            fontSize: 24.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ],
                ),
                Text(
                  valueOrDefault<String>(
                    dateTimeFormat(
                        "MMMMEEEEd", widget.arrivalDoc?.departureDate),
                    '00',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Prompt',
                        color: FlutterFlowTheme.of(context).tertiary,
                        letterSpacing: 0.0,
                      ),
                ),
                Divider(
                  thickness: 2.0,
                  color: FlutterFlowTheme.of(context).primaryBackground,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      dateTimeFormat("jm", widget.arrivalDoc!.departureTime!),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Prompt',
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                    Icon(
                      Icons.flight_takeoff,
                      color: FlutterFlowTheme.of(context).tertiary,
                      size: 20.0,
                    ),
                    const Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(
                          width: 70.0,
                          child: Divider(
                            thickness: 1.0,
                            color: Color(0xFF404040),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      valueOrDefault<String>(
                        widget.departueDoc?.flightDuration,
                        '00',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Prompt',
                            fontSize: 10.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                    const Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(
                          width: 70.0,
                          child: Divider(
                            thickness: 1.0,
                            color: Color(0xFF404040),
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.flight_land_outlined,
                      color: FlutterFlowTheme.of(context).tertiary,
                      size: 20.0,
                    ),
                    Text(
                      dateTimeFormat("jm", widget.arrivalDoc!.arrivalTime!),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Prompt',
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Container(
                    width: 330.0,
                    height: 190.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  size: 16.0,
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    widget.arrivalDoc?.originCountry,
                                    '00',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Prompt',
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  Icons.location_pin,
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  size: 16.0,
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    widget.arrivalDoc?.destinationCountry,
                                    '00',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Prompt',
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    widget.arrivalDoc!.airlineImage,
                                    width: 20.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    widget.departueDoc?.airlineID,
                                    '00',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Prompt',
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 2.0,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        StreamBuilder<List<AirportDatasetRecord>>(
                          stream: queryAirportDatasetRecord(
                            queryBuilder: (airportDatasetRecord) =>
                                airportDatasetRecord.where(
                              'FlightID',
                              isEqualTo: widget.arrivalDoc?.flightID,
                            ),
                            singleRecord: true,
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
                            List<AirportDatasetRecord>
                                rowAirportDatasetRecordList = snapshot.data!;
                            // Return an empty Container when the item does not exist.
                            if (snapshot.data!.isEmpty) {
                              return Container();
                            }
                            final rowAirportDatasetRecord =
                                rowAirportDatasetRecordList.isNotEmpty
                                    ? rowAirportDatasetRecordList.first
                                    : null;

                            return Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.flight,
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  size: 16.0,
                                ),
                                StreamBuilder<List<AirportDatasetRecord>>(
                                  stream: queryAirportDatasetRecord(
                                    queryBuilder: (airportDatasetRecord) =>
                                        airportDatasetRecord.where(
                                      'FlightID',
                                      isEqualTo: widget.departueDoc?.flightID,
                                    ),
                                    singleRecord: true,
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: SpinKitSquareCircle(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 50.0,
                                          ),
                                        ),
                                      );
                                    }
                                    List<AirportDatasetRecord>
                                        textAirportDatasetRecordList =
                                        snapshot.data!;
                                    // Return an empty Container when the item does not exist.
                                    if (snapshot.data!.isEmpty) {
                                      return Container();
                                    }
                                    final textAirportDatasetRecord =
                                        textAirportDatasetRecordList.isNotEmpty
                                            ? textAirportDatasetRecordList.first
                                            : null;

                                    return Text(
                                      'Terminal${textAirportDatasetRecord?.originTeriminal.toString()}',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Prompt',
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                          ),
                                    );
                                  },
                                ),
                              ],
                            );
                          },
                        ),
                        Divider(
                          thickness: 2.0,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.airline_seat_recline_normal,
                              color: FlutterFlowTheme.of(context).tertiary,
                              size: 16.0,
                            ),
                            Text(
                              valueOrDefault<String>(
                                FFAppState().selectedCabinClass,
                                '1',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Prompt',
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 1.0,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.card_travel_outlined,
                              color: FlutterFlowTheme.of(context).tertiary,
                              size: 16.0,
                            ),
                            Text(
                              (FFAppState().selectedCabinClass == 'First') ||
                                      (FFAppState().selectedCabinClass ==
                                          'Business')
                                  ? '1 piece,12KG'
                                  : '1 piece,${FFAppState().cabinBuggage.toString()}KG',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Prompt',
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 1.0,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.luggage_rounded,
                              color: FlutterFlowTheme.of(context).tertiary,
                              size: 16.0,
                            ),
                            Text(
                              FFAppState().checkedBuggage <= 0.0
                                  ? 'Checked Baggage not included'
                                  : () {
                                      if (FFAppState().selectedCabinClass ==
                                          'First') {
                                        return '${FFAppState().numOfCheckedBaggage.toString()} pieces,${FFAppState().checkedBuggage.toString()}KG';
                                      } else if (FFAppState()
                                              .selectedCabinClass ==
                                          'Business') {
                                        return '${FFAppState().numOfCheckedBaggage.toString()} pieces,${FFAppState().checkedBuggage.toString()}KG';
                                      } else {
                                        return '1 piece,${FFAppState().checkedBuggage.toString()}KG';
                                      }
                                    }(),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Prompt',
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed('cancellationPolicy');
                    },
                    text: 'Cancellation Policy',
                    icon: Icon(
                      Icons.info,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 18.0,
                    ),
                    options: FFButtonOptions(
                      width: 347.0,
                      height: 40.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: const Color(0x82B2A59B),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 14.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                Container(
                  width: 353.0,
                  height: 80.0,
                  decoration: const BoxDecoration(
                    color: Color(0x6CBB7A80),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(15.0, 5.0, 15.0, 5.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total Price',
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Text(
                                '${(FFAppState().totalPrice * FFAppState().totalSelectedPassengers).toString()} SR',
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'Includes taxes',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                        ),
                        Text(
                          'Earn${FFAppState().earns.toString()}Points',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed(
                        'payment',
                        queryParameters: {
                          'flightID': serializeParam(
                            widget.flightID,
                            ParamType.String,
                          ),
                          'depatureDoc': serializeParam(
                            widget.departueDoc,
                            ParamType.Document,
                          ),
                          'arrivalDoc': serializeParam(
                            widget.arrivalDoc,
                            ParamType.Document,
                          ),
                        }.withoutNulls,
                        extra: <String, dynamic>{
                          'depatureDoc': widget.departueDoc,
                          'arrivalDoc': widget.arrivalDoc,
                        },
                      );
                    },
                    text: 'Proceed to payment',
                    options: FFButtonOptions(
                      width: 358.0,
                      height: 50.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: const Color(0xFF2B363C),
                      textStyle: FlutterFlowTheme.of(context)
                          .titleSmall
                          .override(
                            fontFamily: 'Poppins',
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            fontSize: 20.0,
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
        ),
      ),
    );
  }
}
