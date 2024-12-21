import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'privact_policy_model.dart';
export 'privact_policy_model.dart';

class PrivactPolicyWidget extends StatefulWidget {
  const PrivactPolicyWidget({super.key});

  @override
  State<PrivactPolicyWidget> createState() => _PrivactPolicyWidgetState();
}

class _PrivactPolicyWidgetState extends State<PrivactPolicyWidget> {
  late PrivactPolicyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrivactPolicyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
            buttonSize: 60.0,
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
            'Privacy Policy',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Prompt',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
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
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, -1.0),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          10.0, 40.0, 10.0, 10.0),
                      child: Text(
                        'Our privacy policy describes the information we collect from the users on our App, how we use it, how we protect your data.\nIf you need any specifications on our Privacy Policy dont hesitate to contact us from Help center',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Prompt',
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, -1.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 10.0, 10.0),
                      child: Text(
                        'Information collection and use',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Prompt',
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 10.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0x2B827472),
                      ),
                      child: Text(
                        'We take our responsibilities regarding the protection of personal information very seriously.\nThis policy explains how we use personal information that we may obtain from you. By using our app you consent to this use. This privacy policy does not apply to the websites of our business partners, corporate affiliates or to any other third parties, even if their websites are linked to the site. We recommend you review the respective privacy statements of the other parties with whom you interact.',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Prompt',
                              fontSize: 13.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, -1.0),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          10.0, 10.0, 10.0, 10.0),
                      child: Text(
                        'What information will we collect?',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Prompt',
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 10.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0x2B827472),
                      ),
                      child: Text(
                        'Personal information, which includes your email address, name, phone number, device ID and IP address.\nTransactional information, such as itinerary details.\nBooking information, such as travel destination and dates.\nCredit/debit card information for payments.\nOther information, such as your browsing activity on mobile app.\nWe will store your personal information in a secure and encrypted format. We do not store your credit/ debit card data. All credit/debit card and payment information is secure, encrypted and handled by fully-certified payment providers.\nPlease note that we need to know the names of all passengers traveling or the names related to the reservation concerned. If you are reserving or booking a flight, on behalf of someone else, you must obtain their consent to use their personal information. We proceed on the basis that you have obtained the aforementioned consent.',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Prompt',
                              fontSize: 13.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, -1.0),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          10.0, 10.0, 10.0, 10.0),
                      child: Text(
                        'We will use this information in the following ways',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Prompt',
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 10.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0x2B827472),
                      ),
                      child: Text(
                        '-To fulfill our agreement with you, including processing your flight, booking and any other reservations, sending you your itinerary, conducting payment transactions for the services available on the app or contacting you if there is a problem with your reservation.\n-To register you with mobile application and administer our app services where you have registered to receive these. You can unsubscribe from these services by contacting us.\n-To answer any queries which you may send to us by e-mail.\n-For direct marketing purposes. To enable us to review, develop and improve the services which we offer and provide you and other customers (via mail, email, telephone or otherwise) with information about new products and services and special offers we think you will find valuable. \n-To improve the user-friendliness of the App (we continually strive to improve the site offerings based on the information we receive from you).\n-To improve customer service (your information helps us to more effectively respond to your customer service requests and support needs) and for website traffic analysis.\n-To administer a contest, promotion, survey or other site features.\nTo send emails, SMS,  mobile app notifications as well as other communications for providing services, responding to inquiries, and/or other requests or questions.\n-To respond to queries of the authorities with regard to your accessing of the site and services availed by you.\nAutomatic logging of session data .\nOf course, you are solely responsible for maintaining the secrecy of your passwords, and your site membership account information. Please be very careful, responsible, and alert with this information, especially whenever you\'re online.',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Prompt',
                              fontSize: 13.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, -1.0),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          10.0, 10.0, 10.0, 10.0),
                      child: Text(
                        'Who do we share your information with?',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Prompt',
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 10.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0x2B827472),
                      ),
                      child: Text(
                        'When using the app you declare and agree:\n-Our customer support offices in the network.\n-Trustworthy third parties that we use for the provision of certain services, such as enabling our customers to book flights, onward flights, hire cars, hotel reservation, complete tourism trip reservation or other services quickly and easily.\n-Customs and/or immigration departments or other regulatory authorities in your country of departure and/or destination in order to comply with the law in those countries.\n-Third party organizations involved in credit card authorization.\nWith authorities, it we have a legal obligation to do so.\n-Our employees and agents to do any of the above on our behalf, now or in the future.\nThis sharing enables us to provide you with information about products and services, both travel-related and other, which might interest you.\nIf you choose not to provide certain personal information we request, you will still be able to visit our site but you may be unable to access certain options or services.',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Prompt',
                              fontSize: 13.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, -1.0),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          10.0, 10.0, 10.0, 10.0),
                      child: Text(
                        'Transfer of your personal information',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Prompt',
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 10.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0x2B827472),
                      ),
                      child: Text(
                        'In order to ensure that your travel arrangements are completed smoothly and effectively, we may transfer personal information to countries which may not have data protection laws or to countries where your privacy and other fundamental rights may not be protected as extensively. We will transfer information only for the purpose of fulfilling/providing the services you have requested from us, in order to fulfill a contract with a third party for your benefit or to disclose information which we are required to do by law or requested from us by a regulator.',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Prompt',
                              fontSize: 13.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, -1.0),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          10.0, 10.0, 10.0, 10.0),
                      child: Text(
                        'What you need to know when using the AFAQ mobile and tablet apps (the \'mobile apps\')',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Prompt',
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 10.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0x2B827472),
                      ),
                      child: Text(
                        'We use some information that we collect automatically when you use our mobile apps Specifically:\n-We collect information about mobile app functionality that you access and use. This allows us to identify those areas of the mobile app that are of interest to our customers so that we can refine and continuously improve the mobile app.\n-The information we collect for this purpose does not enable us to directly identify you.\n-Each mobile app also sends us the device\'s unique device identifier (or \"UDI\"), a sequence of numbers or characters that are unique to your mobile device.\nWhen you use a mobile app, you can choose to allow access to your current location - provided by your mobile device using GPS or similar technologies - in order to identify nearby  airports. If you choose to allow access, this location data may be collected anonymously as part of search requests logged by our servers. It may also be used for geo-targeting purposes to deliver relevant marketing messages to you and enhance your experience. You can switch off the mobile app\'s access to your location at any time through your phone settings menu. This might however restrict usage of any location-dependent services or options available on our mobile app.\nYou always have the ability to control what information a mobile app sends to us. You can exercise this control either by changing the settings of the mobile app under its setting menu or changing the settings of your mobile device.\nAlternatively, you can remove the mobile app from your mobile device entirely . we record your booking process to understand booking behavior and improve our product. However, we do not record sensitive information such as card details.',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Prompt',
                              fontSize: 13.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, -1.0),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          10.0, 10.0, 10.0, 10.0),
                      child: Text(
                        'Account and data deletion',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Prompt',
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 10.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0x2B827472),
                      ),
                      child: Text(
                        'If you\'d like to request for account or data deletion, you can do so by contacting us through , call center and WhatsApp channel. You can also delete your account through our app.\nSimply sign in with your registered email address or mobile number, and you can find the delete option within your profile details.\n',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Prompt',
                              fontSize: 13.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 10.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0x2B827472),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 10.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0x2B827472),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 10.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0x2B827472),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 10.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0x2B827472),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 10.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0x2B827472),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
