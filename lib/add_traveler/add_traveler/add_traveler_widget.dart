import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'add_traveler_model.dart';
export 'add_traveler_model.dart';

class AddTravelerWidget extends StatefulWidget {
  const AddTravelerWidget({super.key});

  @override
  State<AddTravelerWidget> createState() => _AddTravelerWidgetState();
}

class _AddTravelerWidgetState extends State<AddTravelerWidget> {
  late AddTravelerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddTravelerModel());

    _model.firstNameFieldTextController ??= TextEditingController();
    _model.firstNameFieldFocusNode ??= FocusNode();

    _model.lAstNameFieldTextController ??= TextEditingController();
    _model.lAstNameFieldFocusNode ??= FocusNode();

    _model.docTypeFieldTextController ??= TextEditingController();
    _model.docTypeFieldFocusNode ??= FocusNode();

    _model.nationaIDFieldTextController ??= TextEditingController();
    _model.nationaIDFieldFocusNode ??= FocusNode();

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
          buttonSize: 60.0,
          icon: Icon(
            Icons.chevron_left_rounded,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 30.0,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 35.0, 0.0),
            child: Text(
              'Add Traveler',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).displayLarge.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontSize: 26.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ),
        actions: const [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  child: SizedBox(
                    width: 155.0,
                    child: TextFormField(
                      controller: _model.firstNameFieldTextController,
                      focusNode: _model.firstNameFieldFocusNode,
                      autofocus: false,
                      obscureText: false,
                      decoration: InputDecoration(
                        isDense: true,
                        labelStyle: const TextStyle(
                          fontSize: 14.0,
                        ),
                        hintText: 'First Name',
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
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Prompt',
                            letterSpacing: 0.0,
                          ),
                      textAlign: TextAlign.start,
                      keyboardType: TextInputType.name,
                      cursorColor: FlutterFlowTheme.of(context).primaryText,
                      validator: _model.firstNameFieldTextControllerValidator
                          .asValidator(context),
                    ),
                  ),
                ),
                Flexible(
                  child: SizedBox(
                    width: 155.0,
                    child: TextFormField(
                      controller: _model.lAstNameFieldTextController,
                      focusNode: _model.lAstNameFieldFocusNode,
                      autofocus: false,
                      obscureText: false,
                      decoration: InputDecoration(
                        isDense: true,
                        labelStyle: const TextStyle(
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
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Prompt',
                            letterSpacing: 0.0,
                          ),
                      textAlign: TextAlign.start,
                      keyboardType: TextInputType.name,
                      cursorColor: FlutterFlowTheme.of(context).primaryText,
                      validator: _model.lAstNameFieldTextControllerValidator
                          .asValidator(context),
                    ),
                  ),
                ),
              ],
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
                final datePicked1Date = await showDatePicker(
                  context: context,
                  initialDate: getCurrentTimestamp,
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2050),
                  builder: (context, child) {
                    return wrapInMaterialDatePickerTheme(
                      context,
                      child!,
                      headerBackgroundColor:
                          FlutterFlowTheme.of(context).primary,
                      headerForegroundColor: FlutterFlowTheme.of(context).info,
                      headerTextStyle:
                          FlutterFlowTheme.of(context).headlineLarge.override(
                                fontFamily: 'Prompt',
                                fontSize: 32.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                              ),
                      pickerBackgroundColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      pickerForegroundColor:
                          FlutterFlowTheme.of(context).primaryText,
                      selectedDateTimeBackgroundColor:
                          FlutterFlowTheme.of(context).primary,
                      selectedDateTimeForegroundColor:
                          FlutterFlowTheme.of(context).info,
                      actionButtonForegroundColor:
                          FlutterFlowTheme.of(context).primaryText,
                      iconSize: 24.0,
                    );
                  },
                );

                if (datePicked1Date != null) {
                  safeSetState(() {
                    _model.datePicked1 = DateTime(
                      datePicked1Date.year,
                      datePicked1Date.month,
                      datePicked1Date.day,
                    );
                  });
                }
              },
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.87,
                height: 65.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: const Color(0xFFB2A59B),
                    width: 1.0,
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(24.0, 20.0, 12.0, 20.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        valueOrDefault<String>(
                          dateTimeFormat("d/M/y", _model.datePicked1),
                          'Date of birth',
                        ),
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Prompt',
                              color: const Color(0x80000000),
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      const Opacity(
                        opacity: 0.5,
                        child: Icon(
                          Icons.date_range_outlined,
                          color: Color(0x80000000),
                          size: 24.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
            child: SizedBox(
              width: 340.0,
              child: TextFormField(
                controller: _model.docTypeFieldTextController,
                focusNode: _model.docTypeFieldFocusNode,
                onChanged: (_) => EasyDebounce.debounce(
                  '_model.docTypeFieldTextController',
                  const Duration(milliseconds: 2000),
                  () => safeSetState(() {}),
                ),
                autofocus: false,
                textCapitalization: TextCapitalization.characters,
                obscureText: false,
                decoration: InputDecoration(
                  isDense: true,
                  labelStyle: const TextStyle(
                    fontSize: 14.0,
                  ),
                  hintText: 'Passport Number',
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
                  suffixIcon: _model.docTypeFieldTextController!.text.isNotEmpty
                      ? InkWell(
                          onTap: () async {
                            _model.docTypeFieldTextController?.clear();
                            safeSetState(() {});
                          },
                          child: Icon(
                            Icons.clear,
                            color: FlutterFlowTheme.of(context).alternate,
                            size: 23.0,
                          ),
                        )
                      : null,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Prompt',
                      letterSpacing: 0.0,
                    ),
                textAlign: TextAlign.start,
                cursorColor: FlutterFlowTheme.of(context).primaryText,
                validator: _model.docTypeFieldTextControllerValidator
                    .asValidator(context),
                inputFormatters: [_model.docTypeFieldMask],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
            child: SizedBox(
              width: 340.0,
              child: TextFormField(
                controller: _model.nationaIDFieldTextController,
                focusNode: _model.nationaIDFieldFocusNode,
                onChanged: (_) => EasyDebounce.debounce(
                  '_model.nationaIDFieldTextController',
                  const Duration(milliseconds: 2000),
                  () => safeSetState(() {}),
                ),
                autofocus: false,
                obscureText: false,
                decoration: InputDecoration(
                  isDense: true,
                  labelStyle: const TextStyle(
                    fontSize: 14.0,
                  ),
                  hintText: 'Identity Number',
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
                  suffixIcon:
                      _model.nationaIDFieldTextController!.text.isNotEmpty
                          ? InkWell(
                              onTap: () async {
                                _model.nationaIDFieldTextController?.clear();
                                safeSetState(() {});
                              },
                              child: Icon(
                                Icons.clear,
                                color: FlutterFlowTheme.of(context).alternate,
                                size: 23.0,
                              ),
                            )
                          : null,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Prompt',
                      letterSpacing: 0.0,
                    ),
                textAlign: TextAlign.start,
                maxLength: 10,
                maxLengthEnforcement: MaxLengthEnforcement.enforced,
                keyboardType: TextInputType.number,
                cursorColor: FlutterFlowTheme.of(context).primaryText,
                validator: _model.nationaIDFieldTextControllerValidator
                    .asValidator(context),
                inputFormatters: [_model.nationaIDFieldMask],
              ),
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 25.0, 20.0),
              child: FlutterFlowDropDown<String>(
                controller: _model.isuuingCountryDropDwonValueController ??=
                    FormFieldController<String>(null),
                options: const ['Saudi Arabia'],
                onChanged: (val) => safeSetState(
                    () => _model.isuuingCountryDropDwonValue = val),
                width: double.infinity,
                height: 70.0,
                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Open Sans',
                      color: const Color(0xC314181B),
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      lineHeight: 1.0,
                    ),
                hintText: 'Select Issuing Country',
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 24.0,
                ),
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                elevation: 5.0,
                borderColor: const Color(0xFFB2A59B),
                borderWidth: 0.0,
                borderRadius: 8.0,
                margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                hidesUnderline: true,
                isOverButton: false,
                isSearchable: false,
                isMultiSelect: false,
              ),
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
                final datePicked2Date = await showDatePicker(
                  context: context,
                  initialDate: getCurrentTimestamp,
                  firstDate: getCurrentTimestamp,
                  lastDate: DateTime(2050),
                  builder: (context, child) {
                    return wrapInMaterialDatePickerTheme(
                      context,
                      child!,
                      headerBackgroundColor:
                          FlutterFlowTheme.of(context).primary,
                      headerForegroundColor: FlutterFlowTheme.of(context).info,
                      headerTextStyle:
                          FlutterFlowTheme.of(context).headlineLarge.override(
                                fontFamily: 'Prompt',
                                fontSize: 32.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                              ),
                      pickerBackgroundColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      pickerForegroundColor:
                          FlutterFlowTheme.of(context).primaryText,
                      selectedDateTimeBackgroundColor:
                          FlutterFlowTheme.of(context).primary,
                      selectedDateTimeForegroundColor:
                          FlutterFlowTheme.of(context).info,
                      actionButtonForegroundColor:
                          FlutterFlowTheme.of(context).primaryText,
                      iconSize: 24.0,
                    );
                  },
                );

                if (datePicked2Date != null) {
                  safeSetState(() {
                    _model.datePicked2 = DateTime(
                      datePicked2Date.year,
                      datePicked2Date.month,
                      datePicked2Date.day,
                    );
                  });
                }
              },
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.87,
                height: 65.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: const Color(0xFFB2A59B),
                    width: 1.0,
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(24.0, 20.0, 12.0, 20.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        valueOrDefault<String>(
                          dateTimeFormat("d/M/y", _model.datePicked2),
                          '11/11/2002',
                        ),
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Prompt',
                              color: const Color(0x80000000),
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      const Opacity(
                        opacity: 0.5,
                        child: Icon(
                          Icons.date_range_outlined,
                          color: Color(0x80000000),
                          size: 24.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          FFButtonWidget(
            onPressed: () async {
              if (functions.nationalIDValidation(
                      _model.nationaIDFieldTextController.text) ==
                  false) {
                await showDialog(
                  context: context,
                  builder: (alertDialogContext) {
                    return AlertDialog(
                      title: const Text('Error'),
                      content: const Text('National ID must be 10 numbers'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(alertDialogContext),
                          child: const Text('Ok'),
                        ),
                      ],
                    );
                  },
                );
              } else if ((_model.firstNameFieldTextController.text != '') &&
                  (_model.lAstNameFieldTextController.text != '') &&
                  (dateTimeFormat("d/M/y", _model.datePicked1) != '') &&
                  (_model.docTypeFieldTextController.text != '') &&
                  (_model.nationaIDFieldTextController.text != '') &&
                  (_model.isuuingCountryDropDwonValue != null &&
                      _model.isuuingCountryDropDwonValue != '') &&
                  (dateTimeFormat("d/M/y", _model.datePicked2) != '')) {
                await TravelerRecord.createDoc(currentUserReference!)
                    .set(createTravelerRecordData(
                  firstName: _model.firstNameFieldTextController.text,
                  lastName: _model.lAstNameFieldTextController.text,
                  dob: _model.datePicked1,
                  documentType: _model.docTypeFieldTextController.text,
                  nationalID: _model.nationaIDFieldTextController.text,
                  expireDate: _model.datePicked2,
                  issuingCountry: _model.isuuingCountryDropDwonValue,
                ));
                await showDialog(
                  context: context,
                  builder: (alertDialogContext) {
                    return AlertDialog(
                      title: const Text('Success'),
                      content: const Text('Added successfly'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(alertDialogContext),
                          child: const Text('Ok'),
                        ),
                      ],
                    );
                  },
                );

                context.pushNamed('Travelers');
              } else {
                await showDialog(
                  context: context,
                  builder: (alertDialogContext) {
                    return AlertDialog(
                      title: const Text('Error'),
                      content: const Text('Fields cannot be empty'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(alertDialogContext),
                          child: const Text('Ok'),
                        ),
                      ],
                    );
                  },
                );
              }
            },
            text: 'Save',
            options: FFButtonOptions(
              width: 340.0,
              height: 58.0,
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
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
        ],
      ),
    );
  }
}
