import '/auth/firebase_auth/auth_util.dart';
import '/authentication/delete_account/delete_account_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'edit_account_model.dart';
export 'edit_account_model.dart';

class EditAccountWidget extends StatefulWidget {
  const EditAccountWidget({super.key});

  @override
  State<EditAccountWidget> createState() => _EditAccountWidgetState();
}

class _EditAccountWidgetState extends State<EditAccountWidget> {
  late EditAccountModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditAccountModel());

    _model.textController1 ??= TextEditingController(
        text: valueOrDefault<String>(
      valueOrDefault(currentUserDocument?.firstName, ''),
      'First Name',
    ));
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController(
        text: valueOrDefault<String>(
      valueOrDefault(currentUserDocument?.lastName, ''),
      'Last Name',
    ));
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.phoneNumberTextController ??= TextEditingController(
        text: valueOrDefault<String>(
      currentPhoneNumber,
      'Phone Number',
    ));
    _model.phoneNumberFocusNode ??= FocusNode();

    _model.emailTextController1 ??= TextEditingController(
        text: valueOrDefault<String>(
      currentUserEmail,
      'Email',
    ));
    _model.emailFocusNode1 ??= FocusNode();

    _model.emailTextController2 ??= TextEditingController(
        text: dateTimeFormat("d/M/y", currentUserDocument?.dob));
    _model.emailFocusNode2 ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            context.safePop();
          },
        ),
        title: Text(
          'Edit Account',
          textAlign: TextAlign.center,
          style: FlutterFlowTheme.of(context).displayLarge.override(
                fontFamily: 'Poppins',
                color: FlutterFlowTheme.of(context).primaryText,
                fontSize: 26.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.bold,
              ),
        ),
        actions: const [],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    child: AuthUserStreamWidget(
                      builder: (context) => SizedBox(
                        width: 160.0,
                        child: TextFormField(
                          controller: _model.textController1,
                          focusNode: _model.textFieldFocusNode1,
                          autofocus: false,
                          obscureText: false,
                          decoration: InputDecoration(
                            isDense: true,
                            labelText: 'First name',
                            labelStyle: TextStyle(
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 14.0,
                            ),
                            hintText: 'First Name',
                            hintStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Prompt',
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0xFFB2A59B),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 24.0, 0.0, 24.0),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Prompt',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                          textAlign: TextAlign.start,
                          cursorColor: FlutterFlowTheme.of(context).primaryText,
                          validator: _model.textController1Validator
                              .asValidator(context),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: AuthUserStreamWidget(
                      builder: (context) => SizedBox(
                        width: 160.0,
                        child: TextFormField(
                          controller: _model.textController2,
                          focusNode: _model.textFieldFocusNode2,
                          autofocus: false,
                          obscureText: false,
                          decoration: InputDecoration(
                            isDense: true,
                            labelText: 'Last Name',
                            labelStyle: TextStyle(
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 14.0,
                            ),
                            hintText: 'Last Name',
                            hintStyle: GoogleFonts.getFont(
                              'Poppins',
                              color: const Color(0x80000000),
                              fontWeight: FontWeight.w500,
                              fontSize: 16.0,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0xFFB2A59B),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 24.0, 0.0, 24.0),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Prompt',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                          textAlign: TextAlign.start,
                          cursorColor: FlutterFlowTheme.of(context).primaryText,
                          validator: _model.textController2Validator
                              .asValidator(context),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    child: AuthUserStreamWidget(
                      builder: (context) => SizedBox(
                        width: 340.0,
                        child: TextFormField(
                          controller: _model.phoneNumberTextController,
                          focusNode: _model.phoneNumberFocusNode,
                          autofocus: false,
                          obscureText: false,
                          decoration: InputDecoration(
                            isDense: true,
                            labelText: 'Phone Number ',
                            labelStyle: TextStyle(
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 14.0,
                            ),
                            hintText: '+966512345678',
                            hintStyle: GoogleFonts.getFont(
                              'Poppins',
                              color: const Color(0x80000000),
                              fontWeight: FontWeight.w500,
                              fontSize: 16.0,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0xFFB2A59B),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 24.0, 0.0, 24.0),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Prompt',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                          textAlign: TextAlign.start,
                          maxLength: 13,
                          maxLengthEnforcement: MaxLengthEnforcement.enforced,
                          buildCounter: (context,
                                  {required currentLength,
                                  required isFocused,
                                  maxLength}) =>
                              null,
                          keyboardType: TextInputType.phone,
                          cursorColor: FlutterFlowTheme.of(context).primaryText,
                          validator: _model.phoneNumberTextControllerValidator
                              .asValidator(context),
                          inputFormatters: [_model.phoneNumberMask],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
              child: SizedBox(
                width: 340.0,
                child: TextFormField(
                  controller: _model.emailTextController1,
                  focusNode: _model.emailFocusNode1,
                  onChanged: (_) => EasyDebounce.debounce(
                    '_model.emailTextController1',
                    const Duration(milliseconds: 100),
                    () => safeSetState(() {}),
                  ),
                  autofocus: false,
                  readOnly: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    isDense: true,
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 14.0,
                    ),
                    hintText: 'Example@gmail.com',
                    hintStyle: GoogleFonts.getFont(
                      'Poppins',
                      color: const Color(0x80000000),
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFB2A59B),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 0.0, 24.0),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Prompt',
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                  textAlign: TextAlign.start,
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: FlutterFlowTheme.of(context).primaryText,
                  validator:
                      _model.emailTextController1Validator.asValidator(context),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
              child: AuthUserStreamWidget(
                builder: (context) => SizedBox(
                  width: 340.0,
                  child: TextFormField(
                    controller: _model.emailTextController2,
                    focusNode: _model.emailFocusNode2,
                    autofocus: false,
                    readOnly: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      isDense: true,
                      labelText: 'Date of birth',
                      labelStyle: TextStyle(
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 14.0,
                      ),
                      hintText: 'Example@gmail.com',
                      hintStyle: GoogleFonts.getFont(
                        'Poppins',
                        color: const Color(0x80000000),
                        fontWeight: FontWeight.w500,
                        fontSize: 16.0,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFFB2A59B),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 0.0, 24.0),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Prompt',
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: FlutterFlowTheme.of(context).primaryText,
                    validator: _model.emailTextController2Validator
                        .asValidator(context),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
              child: StreamBuilder<List<AccountRecord>>(
                stream: queryAccountRecord(
                  queryBuilder: (accountRecord) => accountRecord.where(
                    'email',
                    isEqualTo: _model.emailTextController1.text,
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
                  List<AccountRecord> buttonAccountRecordList = snapshot.data!;
                  final buttonAccountRecord = buttonAccountRecordList.isNotEmpty
                      ? buttonAccountRecordList.first
                      : null;

                  return FFButtonWidget(
                    onPressed: () async {
                      if (!functions.newCustomFunction2(
                          _model.phoneNumberTextController.text)!) {
                        await showDialog(
                          context: context,
                          builder: (alertDialogContext) {
                            return AlertDialog(
                              title: const Text('Error'),
                              content:
                                  const Text('The phone number must be 9 numbers'),
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
                        return;
                      } else if ((buttonAccountRecord != null) &&
                          (_model.emailTextController1.text !=
                              currentUserEmail)) {
                        await showDialog(
                          context: context,
                          builder: (alertDialogContext) {
                            return AlertDialog(
                              title: const Text('Error'),
                              content: const Text('Email  is alresdy exist'),
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
                        return;
                      } else if (!functions
                          .emailFormat(_model.emailTextController1.text)!) {
                        await showDialog(
                          context: context,
                          builder: (alertDialogContext) {
                            return AlertDialog(
                              title: const Text('Error'),
                              content: const Text('Email  badly formated'),
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
                        return;
                      } else if ((_model.textController1.text == '') ||
                          (_model.textController2.text == '') ||
                          (_model.emailTextController1.text == '')) {
                        await showDialog(
                          context: context,
                          builder: (alertDialogContext) {
                            return AlertDialog(
                              title: const Text('Error'),
                              content: const Text('Fields cannot be empty'),
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
                        return;
                      } else {
                        await currentUserReference!
                            .update(createAccountRecordData(
                          firstName: _model.textController1.text ==
                                  valueOrDefault(
                                      currentUserDocument?.firstName, '')
                              ? valueOrDefault(
                                  currentUserDocument?.firstName, '')
                              : _model.textController1.text,
                          lastName: valueOrDefault(
                                      currentUserDocument?.lastName, '') ==
                                  _model.textController2.text
                              ? valueOrDefault(
                                  currentUserDocument?.lastName, '')
                              : _model.textController2.text,
                          phoneNumber: _model.phoneNumberTextController.text ==
                                  currentPhoneNumber
                              ? currentPhoneNumber
                              : _model.phoneNumberTextController.text,
                          email: _model.emailTextController1.text ==
                                  currentUserEmail
                              ? currentUserEmail
                              : _model.emailTextController1.text,
                        ));
                        await showDialog(
                          context: context,
                          builder: (alertDialogContext) {
                            return AlertDialog(
                              title: const Text('succses'),
                              content: const Text('Edit success'),
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
                        if (_model.emailTextController1.text.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                'Email required!',
                              ),
                            ),
                          );
                          return;
                        }

                        await authManager.updateEmail(
                          email: _model.emailTextController1.text,
                          context: context,
                        );
                        safeSetState(() {});
                      }
                    },
                    text: 'Save',
                    options: FFButtonOptions(
                      width: 340.0,
                      height: 58.0,
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
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed('ChangePassword');
                },
                child: Text(
                  'Change Password',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                await showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  enableDrag: false,
                  context: context,
                  builder: (context) {
                    return Padding(
                      padding: MediaQuery.viewInsetsOf(context),
                      child: const DeleteAccountWidget(),
                    );
                  },
                ).then((value) => safeSetState(() {}));
              },
              child: Text(
                'Delete my Account',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).displayLarge.override(
                      fontFamily: 'Poppins',
                      color: const Color(0xFFB12B19),
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
