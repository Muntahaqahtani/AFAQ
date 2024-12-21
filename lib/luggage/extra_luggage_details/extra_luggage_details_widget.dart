import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/stripe/payment_manager.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'extra_luggage_details_model.dart';
export 'extra_luggage_details_model.dart';

class ExtraLuggageDetailsWidget extends StatefulWidget {
  const ExtraLuggageDetailsWidget({
    super.key,
    required this.totalExtraLuggage,
    required this.priceLuggage,
    required this.flightBookingDoc,
    this.userDoc,
  });

  final int? totalExtraLuggage;
  final int? priceLuggage;
  final AirlinesDatasetRecord? flightBookingDoc;
  final FlightBookingRecord? userDoc;

  @override
  State<ExtraLuggageDetailsWidget> createState() =>
      _ExtraLuggageDetailsWidgetState();
}

class _ExtraLuggageDetailsWidgetState extends State<ExtraLuggageDetailsWidget> {
  late ExtraLuggageDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExtraLuggageDetailsModel());

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
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).secondary,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              widget.flightBookingDoc!.airlineImage,
                              width: 55.0,
                              height: 59.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    valueOrDefault<String>(
                                      dateTimeFormat(
                                          "Hm",
                                          widget
                                              .flightBookingDoc?.departureTime),
                                      '00:00',
                                    ),
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
                                        widget.flightBookingDoc?.originCountry,
                                        'RUH',
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
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    valueOrDefault<String>(
                                      dateTimeFormat(
                                          "Hm",
                                          widget
                                              .flightBookingDoc?.arrivalTime),
                                      '00:00',
                                    ),
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
                                        widget.flightBookingDoc
                                            ?.destinationCountry,
                                        'RUH',
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
                            ],
                          ),
                          Text(
                            valueOrDefault<String>(
                              dateTimeFormat("d/M h:mm a",
                                  widget.flightBookingDoc?.departureDate),
                              '1/1/2000',
                            ),
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 370.0,
              child: Divider(
                height: 50.0,
                thickness: 2.0,
                color: FlutterFlowTheme.of(context).secondary,
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-1.0, -1.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                child: Text(
                  'Your added luggage details:',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.of(context).primary,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ),
            Flexible(
              child: Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Align(
                        alignment: AlignmentDirectional(-1.0, -1.0),
                        child: Icon(
                          Icons.luggage_outlined,
                          color: Color(0xFFBB7A80),
                          size: 100.0,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'total number of luggae',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            Text(
                              'price',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ].divide(const SizedBox(height: 7.0)),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            valueOrDefault<String>(
                              widget.totalExtraLuggage?.toString(),
                              '0',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Text(
                            valueOrDefault<String>(
                              widget.priceLuggage?.toString(),
                              '0',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
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
            Flexible(
              child: Align(
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 29.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      var shouldSetState = false;
                      final paymentResponse = await processStripePayment(
                        context,
                        amount:
                            (widget.priceLuggage!.toDouble() * 100).round(),
                        currency: 'SAR',
                        customerEmail: currentUserEmail,
                        customerName:
                            valueOrDefault(currentUserDocument?.firstName, ''),
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
                      _model.paymentId = paymentResponse.paymentId ?? '';

                      shouldSetState = true;
                      if (_model.paymentId != null && _model.paymentId != '') {
                        if (FFAppState().countController15 == 1) {
                          await widget.userDoc!.reference.update({
                            ...mapToFirestore(
                              {
                                'CheckedBaggage': FieldValue.increment(15),
                                'finalPrice': FieldValue.increment(
                                    widget.priceLuggage!.toDouble()),
                                'checkedTotalOfKilos':
                                    FieldValue.increment(15.0),
                              },
                            ),
                          });
                        } else if (FFAppState().countController20 == 1) {
                          await widget.userDoc!.reference.update({
                            ...mapToFirestore(
                              {
                                'CheckedBaggage': FieldValue.increment(20),
                                'finalPrice': FieldValue.increment(
                                    widget.priceLuggage!.toDouble()),
                                'checkedTotalOfKilos':
                                    FieldValue.increment(20.0),
                              },
                            ),
                          });
                        } else {
                          await widget.userDoc!.reference.update({
                            ...mapToFirestore(
                              {
                                'CheckedBaggage': FieldValue.increment(25),
                                'finalPrice': FieldValue.increment(
                                    widget.priceLuggage!.toDouble()),
                                'checkedTotalOfKilos':
                                    FieldValue.increment(25.0),
                              },
                            ),
                          });
                        }

                        context.pushNamed(
                          'viewBookingDetails',
                          queryParameters: {
                            'flightBookingDoc': serializeParam(
                              widget.userDoc,
                              ParamType.Document,
                            ),
                            'flightDetails': serializeParam(
                              widget.flightBookingDoc,
                              ParamType.Document,
                            ),
                          }.withoutNulls,
                          extra: <String, dynamic>{
                            'flightBookingDoc': widget.userDoc,
                            'flightDetails': widget.flightBookingDoc,
                          },
                        );
                      } else {
                        if (shouldSetState) safeSetState(() {});
                        return;
                      }

                      if (shouldSetState) safeSetState(() {});
                    },
                    text: 'Pay',
                    options: FFButtonOptions(
                      width: 300.0,
                      height: 50.0,
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          16.0, 16.0, 16.0, 16.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: const Color(0xFF2B363C),
                      textStyle: GoogleFonts.getFont(
                        'Poppins',
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        fontWeight: FontWeight.w500,
                        fontSize: 24.0,
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
    );
  }
}
