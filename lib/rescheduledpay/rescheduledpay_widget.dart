import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/stripe/payment_manager.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'rescheduledpay_model.dart';
export 'rescheduledpay_model.dart';

class RescheduledpayWidget extends StatefulWidget {
  const RescheduledpayWidget({
    super.key,
    this.flightID,
    this.departureDoc,
    this.userDoc,
    this.totalPassenger,
  });

  final String? flightID;
  final AirlinesDatasetRecord? departureDoc;
  final FlightBookingRecord? userDoc;
  final int? totalPassenger;

  @override
  State<RescheduledpayWidget> createState() => _RescheduledpayWidgetState();
}

class _RescheduledpayWidgetState extends State<RescheduledpayWidget> {
  late RescheduledpayModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RescheduledpayModel());

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

    return StreamBuilder<List<MyMilesRecord>>(
      stream: queryMyMilesRecord(
        parent: currentUserReference,
        queryBuilder: (myMilesRecord) => myMilesRecord
            .where(
              'accountID',
              isEqualTo: currentUserReference,
            )
            .where(
              'airlineName',
              isEqualTo: widget.departureDoc?.airline,
            ),
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
        List<MyMilesRecord> rescheduledpayMyMilesRecordList = snapshot.data!;
        final rescheduledpayMyMilesRecord =
            rescheduledpayMyMilesRecordList.isNotEmpty
                ? rescheduledpayMyMilesRecordList.first
                : null;

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
                  context.safePop();
                },
              ),
              title: Text(
                'Payment Details',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Prompt',
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
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 30.0, 24.0, 24.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(12.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).secondary,
                              width: 1.0,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 16.0, 16.0, 16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.network(
                                        widget.departureDoc!.airlineImage,
                                        width: 55.0,
                                        height: 55.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                valueOrDefault<String>(
                                                  widget.departureDoc
                                                      ?.originAirportID,
                                                  '00',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily: 'Prompt',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              Icon(
                                                Icons.flight,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                              Text(
                                                valueOrDefault<String>(
                                                  widget.departureDoc
                                                      ?.destinationAirportID,
                                                  '00',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily: 'Prompt',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                dateTimeFormat(
                                                    "d/M h:mm a",
                                                    widget.departureDoc!
                                                        .departureTime!),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Prompt',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              Text(
                                                dateTimeFormat(
                                                    "d/M h:mm a",
                                                    widget.departureDoc!
                                                        .arrivalTime!),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Prompt',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ].divide(const SizedBox(width: 16.0)),
                                ),
                              ].divide(const SizedBox(height: 16.0)),
                            ),
                          ),
                        ),
                        if ((rescheduledpayMyMilesRecord?.reference != null) &&
                            (rescheduledpayMyMilesRecord!.mileBalance > 0.0))
                          Material(
                            color: Colors.transparent,
                            elevation: 2.0,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0),
                              ),
                            ),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0),
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 5.0, 10.0, 5.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, -1.0),
                                      child: Text(
                                        'Use your loyalty points',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .alternate,
                                          ),
                                          child: Checkbox(
                                            value: _model.checkboxValue ??=
                                                false,
                                            onChanged: (newValue) async {
                                              safeSetState(() => _model
                                                  .checkboxValue = newValue!);
                                              if (newValue!) {
                                                FFAppState()
                                                        .selectedMileBalance =
                                                    rescheduledpayMyMilesRecord
                                                        .mileBalance;
                                                safeSetState(() {});
                                              } else {
                                                FFAppState()
                                                    .selectedMileBalance = 0.0;
                                                safeSetState(() {});
                                              }
                                            },
                                            side: BorderSide(
                                              width: 2,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                            ),
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                          ),
                                        ),
                                        Text(
                                          'You Have ${rescheduledpayMyMilesRecord.mileBalance.toString()} Points In ${rescheduledpayMyMilesRecord.loyaltyName} Program',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Prompt',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        Material(
                          color: Colors.transparent,
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 16.0, 16.0, 16.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Payment Summary',
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily: 'Prompt',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  Divider(
                                    thickness: 1.0,
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Original Ticket Price',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Prompt',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Text(
                                        '${widget.userDoc?.finalPrice.toString()} SAR',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Prompt',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Rescheduling Fee',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Prompt',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Text(
                                        '${widget.userDoc?.changePrice.toString()} SAR',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Prompt',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'VAT (15%)',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Prompt',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Text(
                                        'Included',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Prompt',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    thickness: 1.0,
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Total Amount',
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily: 'Prompt',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Text(
                                        (FFAppState().totalPrice - widget.userDoc!.finalPrice + widget.userDoc!.changePrice).toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily: 'Prompt',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ],
                                  ),
                                ].divide(const SizedBox(height: 16.0)),
                              ),
                            ),
                          ),
                        ),
                      ].divide(const SizedBox(height: 24.0)),
                    ),
                  ),
                  Flexible(
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 1.0),
                      child: StreamBuilder<List<AirportDatasetRecord>>(
                        stream: queryAirportDatasetRecord(
                          queryBuilder: (airportDatasetRecord) =>
                              airportDatasetRecord.where(
                            'FlightID',
                            isEqualTo: widget.departureDoc?.flightID,
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
                              containerAirportDatasetRecordList =
                              snapshot.data!;
                          final containerAirportDatasetRecord =
                              containerAirportDatasetRecordList.isNotEmpty
                                  ? containerAirportDatasetRecordList.first
                                  : null;

                          return Container(
                            width: 358.0,
                            height: 130.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0),
                              ),
                            ),
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    var shouldSetState = false;
                                    final paymentResponse =
                                        await processStripePayment(
                                      context,
                                      amount: ((FFAppState().totalPrice -
                                                  (FFAppState()
                                                          .selectedMileBalance *
                                                      0.01)) *
                                              100)
                                          .round(),
                                      currency: 'SAR',
                                      customerEmail: currentUserEmail,
                                      allowGooglePay: true,
                                      allowApplePay: false,
                                    );
                                    if (paymentResponse.paymentId == null &&
                                        paymentResponse.errorMessage != null) {
                                      showSnackbar(
                                        context,
                                        'Error: ${paymentResponse.errorMessage}',
                                      );
                                    }
                                    _model.paymentId2 =
                                        paymentResponse.paymentId ?? '';

                                    shouldSetState = true;
                                    if (_model.paymentId2 != null &&
                                        _model.paymentId2 != '') {
                                      await Future.wait([
                                        Future(() async {
                                          var flightBookingRecordReference =
                                              FlightBookingRecord.collection
                                                  .doc();
                                          await flightBookingRecordReference
                                              .set(
                                                  createFlightBookingRecordData(
                                            accountID: currentUserReference,
                                            numbersOfPassengers: FFAppState()
                                                .totalSelectedPassengers,
                                            flightID:
                                                widget.departureDoc?.reference,
                                            finalPrice: (FFAppState()
                                                        .totalSelectedPassengers *
                                                    FFAppState().totalPrice) -
                                                (FFAppState()
                                                        .selectedMileBalance *
                                                    0.01),
                                            checkedBaggage: FFAppState()
                                                .numOfCheckedBaggage,
                                            cabinBaggage: 1,
                                            flightCancel: false,
                                            dateBooked: widget
                                                .departureDoc?.departureTime,
                                            checkedIn: false,
                                            seatType:
                                                FFAppState().selectedCabinClass,
                                            cabinTotalOfKilos:
                                                FFAppState().cabinBuggage,
                                            checkedTotalOfKilos:
                                                FFAppState().checkedBuggage,
                                            flightIDAirportDSref:
                                                containerAirportDatasetRecord
                                                    ?.reference,
                                            changePrice:
                                                FFAppState().reschedulefFee,
                                            flightIDNumber:
                                                widget.departureDoc?.flightID,
                                            cancelPrice: FFAppState()
                                                .flightCnacelPrice
                                                .toDouble(),
                                            bookingID:
                                                functions.generateBookingID(),
                                          ));
                                          _model.createdFlightBooking =
                                              FlightBookingRecord.getDocumentFromData(
                                                  createFlightBookingRecordData(
                                                    accountID:
                                                        currentUserReference,
                                                    numbersOfPassengers:
                                                        FFAppState()
                                                            .totalSelectedPassengers,
                                                    flightID: widget
                                                        .departureDoc
                                                        ?.reference,
                                                    finalPrice: (FFAppState()
                                                                .totalSelectedPassengers *
                                                            FFAppState()
                                                                .totalPrice) -
                                                        (FFAppState()
                                                                .selectedMileBalance *
                                                            0.01),
                                                    checkedBaggage: FFAppState()
                                                        .numOfCheckedBaggage,
                                                    cabinBaggage: 1,
                                                    flightCancel: false,
                                                    dateBooked: widget
                                                        .departureDoc
                                                        ?.departureTime,
                                                    checkedIn: false,
                                                    seatType: FFAppState()
                                                        .selectedCabinClass,
                                                    cabinTotalOfKilos:
                                                        FFAppState()
                                                            .cabinBuggage,
                                                    checkedTotalOfKilos:
                                                        FFAppState()
                                                            .checkedBuggage,
                                                    flightIDAirportDSref:
                                                        containerAirportDatasetRecord
                                                            ?.reference,
                                                    changePrice: FFAppState()
                                                        .reschedulefFee,
                                                    flightIDNumber: widget
                                                        .departureDoc?.flightID,
                                                    cancelPrice: FFAppState()
                                                        .flightCnacelPrice
                                                        .toDouble(),
                                                    bookingID: functions
                                                        .generateBookingID(),
                                                  ),
                                                  flightBookingRecordReference);
                                          shouldSetState = true;

                                          context.pushNamed(
                                            'successBooking',
                                            queryParameters: {
                                              'flightDoc': serializeParam(
                                                widget.departureDoc,
                                                ParamType.Document,
                                              ),
                                              'flightBooking': serializeParam(
                                                _model.createdFlightBooking,
                                                ParamType.Document,
                                              ),
                                            }.withoutNulls,
                                            extra: <String, dynamic>{
                                              'flightDoc': widget.departureDoc,
                                              'flightBooking':
                                                  _model.createdFlightBooking,
                                            },
                                          );
                                        }),
                                        Future(() async {
                                          if (FFAppState().selectedCabinClass ==
                                              'Economy') {
                                            await widget
                                                .departureDoc!.reference
                                                .update({
                                              ...mapToFirestore(
                                                {
                                                  'ecoCapacity': FieldValue
                                                      .increment(-(FFAppState()
                                                          .totalSelectedPassengers)),
                                                },
                                              ),
                                            });
                                          } else if (FFAppState()
                                                  .selectedCabinClass ==
                                              'Business') {
                                            await widget
                                                .departureDoc!.reference
                                                .update({
                                              ...mapToFirestore(
                                                {
                                                  'businessCapacity': FieldValue
                                                      .increment(-(FFAppState()
                                                          .totalSelectedPassengers)),
                                                },
                                              ),
                                            });
                                          } else {
                                            await widget
                                                .departureDoc!.reference
                                                .update({
                                              ...mapToFirestore(
                                                {
                                                  'FirstCapacity': FieldValue
                                                      .increment(-(FFAppState()
                                                          .totalSelectedPassengers)),
                                                },
                                              ),
                                            });
                                          }

                                          await widget.departureDoc!.reference
                                              .update({
                                            ...mapToFirestore(
                                              {
                                                'FlightCapacity': FieldValue
                                                    .increment(-(FFAppState()
                                                        .totalSelectedPassengers)),
                                              },
                                            ),
                                          });
                                        }),
                                        Future(() async {
                                          if ((rescheduledpayMyMilesRecord !=
                                                  null) ==
                                              true) {
                                            await rescheduledpayMyMilesRecord!
                                                .reference
                                                .update({
                                              ...mapToFirestore(
                                                {
                                                  'mileBalance':
                                                      FieldValue.increment((-1 *
                                                              FFAppState()
                                                                  .selectedMileBalance) +
                                                          FFAppState().earns),
                                                },
                                              ),
                                            });
                                          } else {
                                            var myMilesRecordReference =
                                                MyMilesRecord.createDoc(
                                                    currentUserReference!);
                                            await myMilesRecordReference
                                                .set(createMyMilesRecordData(
                                              mileBalance: FFAppState().earns,
                                              accountID: currentUserReference,
                                              airlineName:
                                                  widget.departureDoc?.airline,
                                            ));
                                            _model.createdMyMilesDoc =
                                                MyMilesRecord
                                                    .getDocumentFromData(
                                                        createMyMilesRecordData(
                                                          mileBalance:
                                                              FFAppState()
                                                                  .earns,
                                                          accountID:
                                                              currentUserReference,
                                                          airlineName: widget
                                                              .departureDoc
                                                              ?.airline,
                                                        ),
                                                        myMilesRecordReference);
                                            shouldSetState = true;
                                            if (widget.departureDoc?.airline ==
                                                'Saudia') {
                                              await _model
                                                  .createdMyMilesDoc!.reference
                                                  .update(
                                                      createMyMilesRecordData(
                                                loyaltyName: 'Alfursan',
                                              ));
                                            } else if (widget
                                                    .departureDoc?.airline ==
                                                'Flynas') {
                                              await _model
                                                  .createdMyMilesDoc!.reference
                                                  .update(
                                                      createMyMilesRecordData(
                                                loyaltyName: 'NasMiles',
                                              ));
                                            } else {
                                              if (shouldSetState) {
                                                safeSetState(() {});
                                              }
                                              return;
                                            }
                                          }
                                        }),
                                        Future(() async {
                                          await widget.userDoc!.reference
                                              .update(
                                                  createFlightBookingRecordData(
                                            flightCancel: true,
                                          ));
                                        }),
                                      ]);
                                    } else {
                                      if (shouldSetState) safeSetState(() {});
                                      return;
                                    }

                                    if (shouldSetState) safeSetState(() {});
                                  },
                                  text: 'Confirm Payment',
                                  options: FFButtonOptions(
                                    width: double.infinity,
                                    height: 50.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Prompt',
                                          color: Colors.white,
                                          letterSpacing: 0.0,
                                        ),
                                    elevation: 2.0,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
