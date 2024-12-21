import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'change_password_model.dart';
export 'change_password_model.dart';

class ChangePasswordWidget extends StatefulWidget {
  const ChangePasswordWidget({super.key});

  @override
  State<ChangePasswordWidget> createState() => _ChangePasswordWidgetState();
}

class _ChangePasswordWidgetState extends State<ChangePasswordWidget> {
  late ChangePasswordModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChangePasswordModel());

    _model.currentPasswordTextController ??= TextEditingController();
    _model.currentPasswordFocusNode ??= FocusNode();

    _model.newPassTextController ??= TextEditingController();
    _model.newPassFocusNode ??= FocusNode();

    _model.confirmPassTextController ??= TextEditingController();
    _model.confirmPassFocusNode ??= FocusNode();

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
          'Change Password',
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
      body: Align(
        alignment: const AlignmentDirectional(0.0, -1.0),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 25.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 22.0, 0.0, 15.0),
                child: SizedBox(
                  width: 340.0,
                  child: TextFormField(
                    controller: _model.currentPasswordTextController,
                    focusNode: _model.currentPasswordFocusNode,
                    autofocus: false,
                    obscureText: !_model.currentPasswordVisibility,
                    decoration: InputDecoration(
                      isDense: true,
                      labelText: 'Currant Password',
                      labelStyle: TextStyle(
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 14.0,
                      ),
                      hintText: 'Current Password',
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
                      suffixIcon: InkWell(
                        onTap: () => safeSetState(
                          () => _model.currentPasswordVisibility =
                              !_model.currentPasswordVisibility,
                        ),
                        focusNode: FocusNode(skipTraversal: true),
                        child: Icon(
                          _model.currentPasswordVisibility
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 23.0,
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Prompt',
                          letterSpacing: 0.0,
                        ),
                    textAlign: TextAlign.start,
                    cursorColor: FlutterFlowTheme.of(context).primaryText,
                    validator: _model.currentPasswordTextControllerValidator
                        .asValidator(context),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                child: SizedBox(
                  width: 340.0,
                  child: TextFormField(
                    controller: _model.newPassTextController,
                    focusNode: _model.newPassFocusNode,
                    autofocus: false,
                    obscureText: !_model.newPassVisibility,
                    decoration: InputDecoration(
                      isDense: true,
                      labelText: 'New Password',
                      labelStyle: TextStyle(
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 14.0,
                      ),
                      hintText: 'New Password',
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
                      suffixIcon: InkWell(
                        onTap: () => safeSetState(
                          () => _model.newPassVisibility =
                              !_model.newPassVisibility,
                        ),
                        focusNode: FocusNode(skipTraversal: true),
                        child: Icon(
                          _model.newPassVisibility
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 23.0,
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Prompt',
                          letterSpacing: 0.0,
                        ),
                    textAlign: TextAlign.start,
                    cursorColor: FlutterFlowTheme.of(context).primaryText,
                    validator: _model.newPassTextControllerValidator
                        .asValidator(context),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 11.0),
                child: SizedBox(
                  width: 340.0,
                  child: TextFormField(
                    controller: _model.confirmPassTextController,
                    focusNode: _model.confirmPassFocusNode,
                    autofocus: false,
                    obscureText: !_model.confirmPassVisibility,
                    decoration: InputDecoration(
                      isDense: true,
                      labelText: 'Confirm New Password',
                      labelStyle: TextStyle(
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 14.0,
                      ),
                      hintText: 'Confirm New Password',
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
                      suffixIcon: InkWell(
                        onTap: () => safeSetState(
                          () => _model.confirmPassVisibility =
                              !_model.confirmPassVisibility,
                        ),
                        focusNode: FocusNode(skipTraversal: true),
                        child: Icon(
                          _model.confirmPassVisibility
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 23.0,
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Prompt',
                          letterSpacing: 0.0,
                        ),
                    textAlign: TextAlign.start,
                    cursorColor: FlutterFlowTheme.of(context).primaryText,
                    validator: _model.confirmPassTextControllerValidator
                        .asValidator(context),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Text(
                  ' Password must be at least 8 characters \n long',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        fontSize: 15.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 35.0),
                child: FFButtonWidget(
                  onPressed: ((_model.currentPasswordTextController.text !=
                              _model.newPassTextController.text) &&
                          (/* NOT RECOMMENDED */ _model
                                  .confirmPassTextController.text ==
                              'true'))
                      ? null
                      : () async {
                          navigate() {}
                          if ((_model.currentPasswordTextController.text ==
                                      '') ||
                              (_model.newPassTextController.text == '') ||
                              (_model.currentPasswordTextController.text ==
                                      '')) {
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: const Text('Erorr'),
                                  content: const Text('Fields cannot be empty '),
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
                          } else if (_model
                                  .currentPasswordTextController.text ==
                              _model.newPassTextController.text) {
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: const Text('Erorr'),
                                  content: const Text(
                                      'The new password cannot be the same as the current password.'),
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
                          } else if (_model
                                  .currentPasswordTextController.text !=
                              valueOrDefault(
                                  currentUserDocument?.password, '')) {
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: const Text('Erorr'),
                                  content:
                                      const Text('The current password is wrong'),
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
                          } else if (_model.newPassTextController.text !=
                              _model.confirmPassTextController.text) {
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: const Text('Erorr'),
                                  content: const Text(
                                      'The confirm new password must match the new password.'),
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
                          } else if (functions.newCustomFunction3(
                              _model.currentPasswordTextController.text)) {
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: const Text('Erorr'),
                                  content: const Text(
                                      'The current  password must be at least 8 characters long.'),
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
                          } else if (functions.newCustomFunction3(
                              _model.newPassTextController.text)) {
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: const Text('Erorr'),
                                  content: const Text(
                                      'The new password must be at least 8 characters long.'),
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
                          } else if (functions.newCustomFunction3(
                              _model.confirmPassTextController.text)) {
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: const Text('Erorr'),
                                  content: const Text(
                                      'The confirm new  password must be at least 8 characters long.'),
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
                          } else {
                            await authManager.updatePassword(
                              newPassword: _model.newPassTextController.text,
                              context: context,
                            );
                            safeSetState(() {});

                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: const Text('Success'),
                                  content: const Text('Updated successfly'),
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

                            await currentUserReference!
                                .update(createAccountRecordData(
                              password: _model.newPassTextController.text,
                            ));
                          }

                          navigate();
                        },
                  text: 'Change Password',
                  options: FFButtonOptions(
                    width: 340.0,
                    height: 58.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
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
            ],
          ),
        ),
      ),
    );
  }
}
