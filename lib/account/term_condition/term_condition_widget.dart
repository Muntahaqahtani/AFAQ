import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'term_condition_model.dart';
export 'term_condition_model.dart';

class TermConditionWidget extends StatefulWidget {
  const TermConditionWidget({super.key});

  @override
  State<TermConditionWidget> createState() => _TermConditionWidgetState();
}

class _TermConditionWidgetState extends State<TermConditionWidget> {
  late TermConditionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermConditionModel());

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
            'Terms & Conditions',
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
                          10.0, 30.0, 10.0, 10.0),
                      child: Text(
                        'As we care about your rights, kindly review these terms and conditions carefully before using AFAQ ',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Prompt',
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                    child: Text(
                      'By accessing and using the  app, you agree to accept, without modification, limitation or qualification, the terms and conditions contained herein (“the Agreement\"). \n\nYou represent and warrant that you possess the legal right and ability to enter into this Agreement and to use the app in accordance with all terms and conditions herein.',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Prompt',
                            fontSize: 13.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, -1.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 10.0, 10.0),
                      child: Text(
                        'Modification of Terms',
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
                        'AFAQ tries to ensure that the information contained on the app  is as accurate as possible.However, inaccuracies may arise from time to time. we accept no responsibility for any errors in the information contained on the AFAQ application.\nThe App contains information about the products and services AFAQ and/or any third party is offering. This information and all other material on the website are provided in good faith.\nBy using the App you agree and acknowledge that the app may update, change or amend the Terms and Conditions and Customer Care Policy and/or other information provided on the app at any time without advance notice. Changed terms and conditions will become effective once posted on the app, and will not have any retrospective effect on existing contractual arrangements made through the app. You should read these terms and conditions every time you visit the app to ensure that you are aware of all the relevant terms and conditions. Accordingly, your continued access and use of the app after any change is deemed to be your acceptance of the modified terms and conditions.',
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
                        'Site Availability',
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
                        'While the app uses all reasonable endeavors to make the app and associated services available, the app cannot guarantee that they will operate continuously or without interruption.',
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
                        'Disclaimer of Warranties and Limitation of Liability',
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
                        'The app makes no representations or warranties, either expressed or implied, with respect to the app or the contents and, to the fullest extent permissible under the law, disclaims all such representations and warranties.\nYour access to and use of software and other materials on, is solely at your own risk. The app makes no warranty whatsoever about the reliability, stability or virus-free nature of such software.\n\nSubject to applicable law, under no circumstance is AFAQ and/or its Licensors and/or Suppliers and/or its Service Providers responsible for any direct or indirect, incidental, special, punitive, exemplary or consequential damages of any kind (including but not limited to lost profits, lost savings or revenue, or loss or corruption of data or information) which arises out of or is in any way connected with your use of or inability to use the App whether based on breach of contract, tort, negligence, product liability or otherwise, even if advised of the possibility of such damages. This includes any information, products or services obtained through or any contract entered into via the app, but excludes carriage by air performed by airlines in respect of any ticket obtained using the booking engine provided on the app, which is subject to the conditions of carriage and applicable international conventions.',
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
                        'Acceptable Use',
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
                        'When using the app you declare and agree:\n-To use it solely to determine the availability of products and services offered on the app and to assist you to make legitimate reservations or transact business with us. You agree to use the website only for personal, non-commercial use.\n-To use the website services to make only legitimate reservations.\n-You are at least 17years of age and you possess the legal authority to create a binding legal obligation.\n-You will inform such other persons about the Terms of Use that apply to the reservations you have made on their behalf, including all rules and restrictions applicable thereto;\n-Not to make any false reservation or any reservation in anticipation of demand. The app may cancel, without notice, all confirmations associated with multiple reservations to one or more destination on or about the same date.\n-Not to deface, alter or interfere with the front end\"look and feel\" of the app or the underlying software code.\n-Not to do anything which will or might damage, interfere with, disrupt access to, interrupt or impair the functionality of the material available on the website, nor to upload any material that contains any computer viruses or other codes, files or programs designed to interrupt, destroy or limit the functionality of any software or equipment.\n-Not to post, distribute or otherwise upload any defamatory, libelous, offensive, infringing, obscene, indecent, harmful, threatening, abusive, tortuous, racially or ethnically objectionable or otherwise unlawful material or information or send any chain letters, junk mail, \'spamming\' material or any other form of bulk communication.\n-Not to threaten, harass, stalk, abuse, disrupt or otherwise violate the rights of others, including individual privacy rights.\n-Not to obtain or attempt to obtain unauthorized access to the website or any private or member account areas on the website, nor to impersonate any person or misrepresent your affiliation with another person.\n-Not do, cause or permit anything to be done that may infringe damage or interfere with any intellectual property rights of nor any of our associated companies or third parties.\n-not to do anything that is otherwise unlawful or which may create any liability on the part of the website.\n-Violate this Agreement or any applicable legislation in any other manner.\n-Upload or attach files that contain software or other material protected by intellectual property laws (or by rights of privacy and publicity) unless the User owns or controls the rights thereto or has received all consents thereof as may be required by law.\n-Upload or attach files that contain viruses, corrupted files or any other similar software or programs that may damage the operation of another computer.\n-Delete any author attributions, legal notices or proprietary designations or labels in any file that is uploaded.\n-Falsify the origin or source of software or other material contained in a file that is uploaded.\n-Advertise or offer to sell any goods or services, or conduct or forward surveys, contests or chain letters, or download any file posted by another user of a forum that the User knows, or reasonably should know, cannot be legally distributed in such manner.\n- Use this website or its contents for any commercial purpose;\n-Access, monitor or copy any content or information of this website using any robot, spider, scraper or other automated means or any manual process for any purpose without our express written permission;\n-Violate the restrictions in any robot exclusion headers on this app or bypass or circumvent other measures employed to prevent or limit access to this app;\n-Take any action that imposes, or may impose, in our discretion, an unreasonable or disproportionately large load on our infrastructure;\n-Deep-link to any portion of this website (including, without limitation, the purchase path for any travel services) for any purpose without our express written permission; or\'Frame\', \'mirror\' or otherwise incorporate any part of this website into any other website without our prior written authorisation.\n-Not to host, display, upload, modify, publish, transmit, update or share the following:\n-Information belonging to another person for which the user does not have any right.\n-Information that is hateful, grossly harmful including harmful to minors, paedophilia, invasive of others\' privacy, racially, ethnically objectionable, disparaging, encouraging money laundering or gambling.\n-Information that infringes any Patent, Trademark, Copyright or other Proprietary rights.\n-Information that deceives or misleads the addressee about the origin of such messages or communicates any information which is grossly offensive or menacing in nature.\n-Information that threatens the unity, integrity, defence, security or sovereignty of the countries we operate in, friendly relations with foreign states or public order or causes incitement to the commission of any cognisable offence or prevents investigation of any offence or insults any other nation.\n-Information that impersonates another person.\nIf the website considers that you have breached any of these terms and conditions or have otherwise demonstrated inappropriate conduct when using the app, AFAQ reserves the right to:\n-Warn you that you have breached these terms and conditions, and ask you to stop such conduct;\n-Delete any material or content which you may have posted without notice to you;\n-Take measures (including terminating,suspending or restricting your access) to, and preventing you from using the website;\n-Cancel any bookings and/or reservations that you may have with AFAQ without reference to you;\n-Report your activities to an internet service provider or relevant authorities;\n-Take legal action against you.',
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
                        'Copyright and Trademarks',
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
                        '-All content of the AFAQ Appis subject to copyright.\n-The App is for your personal and non-commercial use. \n-You may not modity, copy, distribute, transmit, display, perform, reproduce, publish, license, create derivative works from, transfer, or sell any information, software, products or services obtained from the App.\n-The App, sister companies\' names, and any other product or trade names of Almosafer referenced to the website are our trademarks and/ or registered trademarks. Other product and company names mentioned herein may be the trademarks of their respective owners.\nBy using the Mobile Service, you understand and agree that AFAQ has no obligation to maintain, support, upgrade, or update the Mobile Service, or to provide all or any specific content through the Mobile Service. You further understand and agree that we may access, collect, and use information, which may include personally identifiable information, which your mobile device automatically makes available to our mobile app, consistent with our Privacy Policy.',
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
                        'Use of Credit Card',
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
                        '-We accept all major credit cards and debit cards.\n-You can make bookings on the App for passengers other than yourself.\n-We accept credit cards issued across various geographies. However, we may keep certain credit cards issued by certain countries blocked on our website / mobile apps during the booking process.\n-Your credit card / debit card will be debited when you click on the confirm button.\n-The tickets shall be delivered to you to your registered email address once the payment has been confirmed by our payment gateway.\n-Disclaimer: AFAQ accepts no liability or responsibility and will not be liable or responsible for any loss, damage, misuse or unauthorised access occurring in connection with the provision of credit / debit card data. Almosafer will not be responsible or liable for any action or decision made by you in reliance on the information with regard to credit / debit card usage on this website even if Almosafer has been advised of the possibility of these damages.\n-We will make every effort to maintain confidentiality when securing an online or mobile payment. This covers the security of your credit card details and other personal information. We do not store your credit/debit card data. All credit/ debit card and payment information is secure, encrypted and handled by fully-certified payment providers.',
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
                        'Fraud Management',
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
                        'if your booking or account shows signs of fraud, abuse, or suspicious activity, the website may cancel any travel or service reservations associated with your name, emoll address, or account, and close any associated AFAD accounts you have conducted any fraudulent activity the website reserves the right to take any necessary Criminal and or Civil legal action and you may be liable for monetary lesses to the website, Including litigation costs and damages. To contest the concellation of a booking orpering or closure of an account please contact AFAO Customer Care\nThe App reserves the right to undertake all necessary steps to ensure that the security safety and integrity of AFAQs systems, as well as its clients interests, ore and remain, well-pratected. towaras this end, Afae hoy pake venous steps to very ano confirm the authenticity, enforce abilty and validity of bookings placed by you\nI AFAO, in its sole and exclusive discretion, concludes that the said transactions are not or do not reasonably appear to be authentic, enforceable or valid, then AFA® may cancel the said bookings at any time before the scheduled time of departure of the relevant flight.\nun the event that a refundable booking is made and subsequently cancelled, AFAQ reserves the right to impose a processing fee if the cancellation is determined to be abusive in nature. The processing fee will be 5% of the booking value and will be deducted from any refund due to the customer. Please note that the AFAQ\'s determination of what constitutes abusive cancellation behavior is at its sole discretion.',
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
                        'Conditions of Carriage',
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
                        'The carriage of passengers and their baggage by air will be subject to the Conditions of Carriage of the carrier concerned.\nThe carriage of passengers and their baggage may also be subject to the applicable Warsaw Convention 1929 or the Montreal Convention 1999, and other applicable legislation which may limit or stipulate the carrier\'s liability in certain circumstances.',
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
                        'Indemnity & Limitation of Liability',
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
                        'As a condition of use of the AFAQ App , you agree to indemnity us from and against any and all liabilities, expenses (including attorney\'s fees) and damages arising out of claims resulting from your use of the app , including without limitation any claims alleging facts that, if true, would constitute a breach by you of these terms and conditions.\nIn no event will the app be liable to you for any special, indirect, incidental, consequential, punitive, reliance, or exemplary damages (including without limitation lost business opportunities, lost revenues, or loss of anticipated profits or any other pecuniary or non-pecuniary loss or damage of any nature whatsoever) arising out of or relating to (i) this agreement, (ii) the services, the site or any reference site, or (ili) your use or inability to use the services, the site (including any and all materials) or any reference sites.',
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
                        'Waiver',
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
                        'The failure of the website to exercise or enforce any right or provision of this Agreement will not constitute a waiver of such right or provision. Any waiver of any provision of this Agreement will be effective only if in writing and signed by AFAQ.',
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
                        'Grievances',
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
                        'If you are dissatisfied with any aspect of the App or if you have any grievances about any of the services provided by the App please contact US.\nHow to reach AFAQ :\nEmail us directly at support@afaq.com or call us from within Saudi at 920 000 778 or call (+966) 0112199565 from outside of Saudi.\n',
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
                        'Choice of Law and Jurisdiction',
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
                        'Your use of the website and the terms and conditions is subject to the laws of the Kingdom of Saudi Arabia and you agree to submit to the exclusive jurisdiction of the courts of Saudi Arabia.\nNevertheless, the App reserves the right to bring proceedings to the courts of the country of your location.',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Prompt',
                              fontSize: 13.0,
                              letterSpacing: 0.0,
                            ),
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
