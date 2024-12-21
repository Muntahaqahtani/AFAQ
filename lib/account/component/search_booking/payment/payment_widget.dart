import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
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
import 'payment_model.dart';
export 'payment_model.dart';

class PaymentWidget extends StatefulWidget {
  const PaymentWidget({
    super.key,
    required this.flightID,
    this.depatureDoc,
    this.arrivalDoc,
  });

  final String? flightID;
  final AirlinesDatasetRecord? depatureDoc;
  final AirlinesDatasetRecord? arrivalDoc;

  @override
  State<PaymentWidget> createState() => _PaymentWidgetState();
}

class _PaymentWidgetState extends State<PaymentWidget>
    with TickerProviderStateMixin {
  late PaymentModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PaymentModel());

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
              'airlineName',
              isEqualTo: widget.depatureDoc?.airline,
            )
            .where(
              'accountID',
              isEqualTo: currentUserReference,
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
        List<MyMilesRecord> paymentMyMilesRecordList = snapshot.data!;
        final paymentMyMilesRecord = paymentMyMilesRecordList.isNotEmpty
            ? paymentMyMilesRecordList.first
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
                  context.pop();
                },
              ),
              title: Text(
                'Payment Details',
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
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(12.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).secondary,
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.network(
                                      widget.depatureDoc!.airlineImage,
                                      width: 55.0,
                                      height: 59.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        dateTimeFormat(
                                            "jm",
                                            widget
                                                .depatureDoc!.departureTime!),
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Outfit',
                                              color: const Color(0xFF14181B),
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 4.0, 0.0, 0.0),
                                        child: Text(
                                          valueOrDefault<String>(
                                            widget
                                                .depatureDoc?.originAirportID,
                                            '00',
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .labelSmall
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                color: const Color(0xFF57636C),
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Icon(
                                    Icons.flight,
                                    color: Color(0xFF57636C),
                                    size: 35.0,
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        dateTimeFormat("jm",
                                            widget.depatureDoc!.arrivalTime!),
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Outfit',
                                              color: const Color(0xFF14181B),
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            8.0, 4.0, 0.0, 0.0),
                                        child: Text(
                                          valueOrDefault<String>(
                                            widget.depatureDoc
                                                ?.destinationAirportID,
                                            '00',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .labelSmall
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                color: const Color(0xFF57636C),
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Flexible(
                                    child: Align(
                                      alignment: const AlignmentDirectional(1.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 15.0, 0.0),
                                        child: Text(
                                          dateTimeFormat(
                                              "MEd",
                                              widget
                                                  .depatureDoc!.departureTime!),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Prompt',
                                                color: const Color(0xFF404040),
                                                fontSize: 10.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w300,
                                              ),
                                        ),
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
                    if ((paymentMyMilesRecord?.reference != null) &&
                        (paymentMyMilesRecord!.mileBalance > 0.0))
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
                                  alignment: const AlignmentDirectional(-1.0, -1.0),
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
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Theme(
                                      data: ThemeData(
                                        checkboxTheme: CheckboxThemeData(
                                          visualDensity: VisualDensity.compact,
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
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
                                        value: _model.checkboxValue ??= false,
                                        onChanged: (newValue) async {
                                          safeSetState(() =>
                                              _model.checkboxValue = newValue!);
                                          if (newValue!) {
                                            FFAppState().selectedMileBalance =
                                                paymentMyMilesRecord
                                                    .mileBalance;
                                            safeSetState(() {});
                                          } else {
                                            FFAppState().selectedMileBalance =
                                                0.0;
                                            safeSetState(() {});
                                          }
                                        },
                                        side: BorderSide(
                                          width: 2,
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                        ),
                                        activeColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        checkColor:
                                            FlutterFlowTheme.of(context).info,
                                      ),
                                    ),
                                    Text(
                                      'You Have ${paymentMyMilesRecord.mileBalance.toString()} Points In ${paymentMyMilesRecord.loyaltyName} Program',
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
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
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
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Ticket Price',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Prompt',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  Text(
                                    '${FFAppState().totalPrice.toString()} SAR',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Prompt',
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
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
                                    'x${FFAppState().totalSelectedPassengers.toString()} Passengers',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Prompt',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  Text(
                                    '${(FFAppState().totalSelectedPassengers * FFAppState().totalPrice).toString()} SAR',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Prompt',
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
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
                                          color: FlutterFlowTheme.of(context)
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
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                              Divider(
                                thickness: 1.0,
                                color: FlutterFlowTheme.of(context).alternate,
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
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  Text(
                                    '${((FFAppState().totalPrice - (FFAppState().selectedMileBalance * 0.01)) * FFAppState().totalSelectedPassengers).toString()} SAR',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Prompt',
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ],
                              ),
                            ].divide(const SizedBox(height: 16.0)),
                          ),
                        ),
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
                              isEqualTo: widget.depatureDoc?.flightID,
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
                                        amount: (((FFAppState().totalPrice -
                                                        (FFAppState()
                                                                .selectedMileBalance *
                                                            0.01)) *
                                                    FFAppState()
                                                        .totalSelectedPassengers) *
                                                100)
                                            .round(),
                                        currency: 'SAR',
                                        customerEmail: currentUserEmail,
                                        allowGooglePay: true,
                                        allowApplePay: false,
                                      );
                                      if (paymentResponse.paymentId == null &&
                                          paymentResponse.errorMessage !=
                                              null) {
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
                                            var flightBookingRecordReference1 =
                                                FlightBookingRecord.collection
                                                    .doc();
                                            await flightBookingRecordReference1
                                                .set(
                                                    createFlightBookingRecordData(
                                              accountID: currentUserReference,
                                              numbersOfPassengers: FFAppState()
                                                  .totalSelectedPassengers,
                                              flightID: widget
                                                  .depatureDoc?.reference,
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
                                                  .depatureDoc?.departureTime,
                                              checkedIn: false,
                                              seatType: FFAppState()
                                                  .selectedCabinClass,
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
                                                  widget.depatureDoc?.flightID,
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
                                                          .depatureDoc
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
                                                          .depatureDoc
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
                                                          .depatureDoc
                                                          ?.flightID,
                                                      cancelPrice: FFAppState()
                                                          .flightCnacelPrice
                                                          .toDouble(),
                                                      bookingID: functions
                                                          .generateBookingID(),
                                                    ),
                                                    flightBookingRecordReference1);
                                            shouldSetState = true;
                                            if (FFAppState().tabIndex == 0) {
                                              context.pushNamed(
                                                'successBooking',
                                                queryParameters: {
                                                  'flightDoc': serializeParam(
                                                    widget.depatureDoc,
                                                    ParamType.Document,
                                                  ),
                                                  'flightBooking':
                                                      serializeParam(
                                                    _model.createdFlightBooking,
                                                    ParamType.Document,
                                                  ),
                                                }.withoutNulls,
                                                extra: <String, dynamic>{
                                                  'flightDoc':
                                                      widget.depatureDoc,
                                                  'flightBooking': _model
                                                      .createdFlightBooking,
                                                },
                                              );
                                            } else {
                                              if (shouldSetState) {
                                                safeSetState(() {});
                                              }
                                              return;
                                            }
                                          }),
                                          Future(() async {
                                            if (FFAppState()
                                                    .selectedCabinClass ==
                                                'Economy') {
                                              await widget
                                                  .depatureDoc!.reference
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
                                                  .depatureDoc!.reference
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
                                                  .depatureDoc!.reference
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

                                            await widget.depatureDoc!.reference
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
                                            if ((paymentMyMilesRecord !=
                                                    null) ==
                                                true) {
                                              await paymentMyMilesRecord!
                                                  .reference
                                                  .update({
                                                ...mapToFirestore(
                                                  {
                                                    'mileBalance': FieldValue
                                                        .increment((-1 *
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
                                                airlineName: widget
                                                    .depatureDoc?.airline,
                                              ));
                                              _model.createdMyMilesDoc =
                                                  MyMilesRecord.getDocumentFromData(
                                                      createMyMilesRecordData(
                                                        mileBalance:
                                                            FFAppState().earns,
                                                        accountID:
                                                            currentUserReference,
                                                        airlineName: widget
                                                            .depatureDoc
                                                            ?.airline,
                                                      ),
                                                      myMilesRecordReference);
                                              shouldSetState = true;
                                              if (widget
                                                      .depatureDoc?.airline ==
                                                  'Saudia') {
                                                await _model.createdMyMilesDoc!
                                                    .reference
                                                    .update(
                                                        createMyMilesRecordData(
                                                  loyaltyName: 'Alfursan',
                                                ));
                                              } else if (widget
                                                      .depatureDoc?.airline ==
                                                  'Flynas') {
                                                await _model.createdMyMilesDoc!
                                                    .reference
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
                                            if (FFAppState().tabIndex == 1) {
                                              await Future.wait([
                                                Future(() async {
                                                  await FlightBookingRecord
                                                      .collection
                                                      .doc()
                                                      .set(
                                                          createFlightBookingRecordData(
                                                        accountID:
                                                            currentUserReference,
                                                        numbersOfPassengers:
                                                            FFAppState()
                                                                .totalSelectedPassengers,
                                                        flightID: widget
                                                            .arrivalDoc
                                                            ?.reference,
                                                        finalPrice: FFAppState()
                                                                .totalPrice -
                                                            (FFAppState()
                                                                    .selectedMileBalance *
                                                                0.01),
                                                        checkedBaggage: FFAppState()
                                                            .numOfCheckedBaggage,
                                                        cabinBaggage: 1,
                                                        flightCancel: false,
                                                        dateBooked: widget
                                                            .arrivalDoc
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
                                                        changePrice:
                                                            FFAppState()
                                                                .reschedulefFee,
                                                        flightIDNumber: widget
                                                            .arrivalDoc
                                                            ?.flightID,
                                                        cancelPrice: FFAppState()
                                                            .flightCnacelPrice
                                                            .toDouble(),
                                                        bookingID: functions
                                                            .generateBookingID(),
                                                      ));

                                                  context.pushNamed(
                                                    'successBooking',
                                                    queryParameters: {
                                                      'flightDoc':
                                                          serializeParam(
                                                        widget.depatureDoc,
                                                        ParamType.Document,
                                                      ),
                                                      'flightBooking':
                                                          serializeParam(
                                                        _model
                                                            .createdFlightBooking,
                                                        ParamType.Document,
                                                      ),
                                                    }.withoutNulls,
                                                    extra: <String, dynamic>{
                                                      'flightDoc':
                                                          widget.depatureDoc,
                                                      'flightBooking': _model
                                                          .createdFlightBooking,
                                                    },
                                                  );
                                                }),
                                                Future(() async {
                                                  if (FFAppState()
                                                          .selectedCabinClass ==
                                                      'Economy') {
                                                    await widget
                                                        .arrivalDoc!.reference
                                                        .update({
                                                      ...mapToFirestore(
                                                        {
                                                          'ecoCapacity':
                                                              FieldValue.increment(
                                                                  -(FFAppState()
                                                                      .totalSelectedPassengers)),
                                                        },
                                                      ),
                                                    });
                                                  } else if (FFAppState()
                                                          .selectedCabinClass ==
                                                      'Business') {
                                                    await widget
                                                        .arrivalDoc!.reference
                                                        .update({
                                                      ...mapToFirestore(
                                                        {
                                                          'businessCapacity':
                                                              FieldValue.increment(
                                                                  -(FFAppState()
                                                                      .totalSelectedPassengers)),
                                                        },
                                                      ),
                                                    });
                                                  } else {
                                                    await widget
                                                        .arrivalDoc!.reference
                                                        .update({
                                                      ...mapToFirestore(
                                                        {
                                                          'FirstCapacity':
                                                              FieldValue.increment(
                                                                  -(FFAppState()
                                                                      .totalSelectedPassengers)),
                                                        },
                                                      ),
                                                    });
                                                  }
                                                }),
                                              ]);
                                            } else {
                                              if (shouldSetState) {
                                                safeSetState(() {});
                                              }
                                              return;
                                            }
                                          }),
                                          Future(() async {
                                            _model.pdfBooking =
                                                await BFPdfgenbookingdetailsGroup
                                                    .pdfgenbookingdetailsCall
                                                    .call(
                                              name: currentUserDisplayName,
                                              depDate: dateTimeFormat(
                                                  "d/M H:mm",
                                                  widget.depatureDoc
                                                      ?.departureTime),
                                              arrivalDate: dateTimeFormat(
                                                  "d/M H:mm",
                                                  widget.depatureDoc
                                                      ?.arrivalTime),
                                              airline:
                                                  widget.depatureDoc?.airline,
                                              seatType: FFAppState()
                                                  .selectedCabinClass,
                                              passengersNum: FFAppState()
                                                  .totalSelectedPassengers
                                                  .toString(),
                                              depCity: widget
                                                  .depatureDoc?.originCountry,
                                              arrivalCity: widget.depatureDoc
                                                  ?.destinationCountry,
                                              amountPaid: ((FFAppState()
                                                              .totalPrice -
                                                          (FFAppState()
                                                                  .selectedMileBalance *
                                                              0.01)) *
                                                      FFAppState()
                                                          .totalSelectedPassengers)
                                                  .toString(),
                                            );

                                            shouldSetState = true;
                                            _model.apiResult7pm =
                                                await BFEmailbookingconfirmationGroup
                                                    .emailbookingconfirmationCall
                                                    .call(
                                              to: currentUserEmail,
                                              subject:
                                                  'Booking Confirmation & Details',
                                              name: currentUserDisplayName,
                                              attachmentLink: (_model
                                                      .pdfBooking?.bodyText ??
                                                  ''),
                                              attachmentName:
                                                  'BookingDetails.pdf',
                                            );

                                            shouldSetState = true;
                                          }),
                                        ]);
                                      } else {
                                        if (shouldSetState) {
                                          safeSetState(() {});
                                        }
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
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
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
                  ].divide(const SizedBox(height: 20.0)),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
