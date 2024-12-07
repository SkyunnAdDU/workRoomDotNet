import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'account_container_model.dart';
export 'account_container_model.dart';

class AccountContainerWidget extends StatefulWidget {
  const AccountContainerWidget({
    super.key,
    required this.idNumber,
  });

  final String? idNumber;

  @override
  State<AccountContainerWidget> createState() => _AccountContainerWidgetState();
}

class _AccountContainerWidgetState extends State<AccountContainerWidget> {
  late AccountContainerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AccountContainerModel());

    _model.firstNameTextController ??= TextEditingController();
    _model.firstNameFocusNode ??= FocusNode();
    _model.firstNameFocusNode!.addListener(() => safeSetState(() {}));
    _model.lastNameTextController ??= TextEditingController();
    _model.lastNameFocusNode ??= FocusNode();
    _model.lastNameFocusNode!.addListener(() => safeSetState(() {}));
    _model.genderTextTextController ??= TextEditingController();
    _model.genderTextFocusNode ??= FocusNode();
    _model.genderTextFocusNode!.addListener(() => safeSetState(() {}));
    _model.courseTextTextController ??= TextEditingController();
    _model.courseTextFocusNode ??= FocusNode();
    _model.courseTextFocusNode!.addListener(() => safeSetState(() {}));
    _model.enrolledYearTextBoxTextController ??= TextEditingController();
    _model.enrolledYearTextBoxFocusNode ??= FocusNode();
    _model.enrolledYearTextBoxFocusNode!.addListener(() => safeSetState(() {}));
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 800.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Create Account',
              style: FlutterFlowTheme.of(context).displaySmall.override(
                    fontFamily: 'Readex Pro',
                    letterSpacing: 0.0,
                  ),
            ),
            Text(
              'Student Information',
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'Inter',
                    letterSpacing: 0.0,
                  ),
            ),
            TextFormField(
              controller: _model.firstNameTextController,
              focusNode: _model.firstNameFocusNode,
              autofocus: true,
              textCapitalization: TextCapitalization.words,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'First Name',
                labelStyle: FlutterFlowTheme.of(context).labelLarge.override(
                      fontFamily: 'Inter',
                      letterSpacing: 0.0,
                    ),
                hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Inter',
                      letterSpacing: 0.0,
                    ),
                errorStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      color: FlutterFlowTheme.of(context).error,
                      fontSize: 12.0,
                      letterSpacing: 0.0,
                    ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).alternate,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primary,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                filled: true,
                fillColor: (_model.firstNameFocusNode?.hasFocus ?? false)
                    ? FlutterFlowTheme.of(context).accent1
                    : FlutterFlowTheme.of(context).secondaryBackground,
                contentPadding:
                    const EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 16.0, 20.0),
              ),
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'Inter',
                    letterSpacing: 0.0,
                  ),
              cursorColor: FlutterFlowTheme.of(context).primary,
              validator:
                  _model.firstNameTextControllerValidator.asValidator(context),
            ),
            TextFormField(
              controller: _model.lastNameTextController,
              focusNode: _model.lastNameFocusNode,
              autofocus: true,
              textCapitalization: TextCapitalization.words,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Last Name',
                labelStyle: FlutterFlowTheme.of(context).labelLarge.override(
                      fontFamily: 'Inter',
                      letterSpacing: 0.0,
                    ),
                hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Inter',
                      letterSpacing: 0.0,
                    ),
                errorStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      color: FlutterFlowTheme.of(context).error,
                      fontSize: 12.0,
                      letterSpacing: 0.0,
                    ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).alternate,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primary,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                filled: true,
                fillColor: (_model.lastNameFocusNode?.hasFocus ?? false)
                    ? FlutterFlowTheme.of(context).accent1
                    : FlutterFlowTheme.of(context).secondaryBackground,
                contentPadding:
                    const EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 16.0, 20.0),
              ),
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'Inter',
                    letterSpacing: 0.0,
                  ),
              cursorColor: FlutterFlowTheme.of(context).primary,
              validator:
                  _model.lastNameTextControllerValidator.asValidator(context),
            ),
            Text(
              'Gender',
              style: FlutterFlowTheme.of(context).labelMedium.override(
                    fontFamily: 'Inter',
                    letterSpacing: 0.0,
                  ),
            ),
            TextFormField(
              controller: _model.genderTextTextController,
              focusNode: _model.genderTextFocusNode,
              autofocus: true,
              textCapitalization: TextCapitalization.words,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Enter your Gender',
                labelStyle: FlutterFlowTheme.of(context).labelLarge.override(
                      fontFamily: 'Inter',
                      letterSpacing: 0.0,
                    ),
                hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Inter',
                      letterSpacing: 0.0,
                    ),
                errorStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      color: FlutterFlowTheme.of(context).error,
                      fontSize: 12.0,
                      letterSpacing: 0.0,
                    ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).alternate,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primary,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                filled: true,
                fillColor: (_model.genderTextFocusNode?.hasFocus ?? false)
                    ? FlutterFlowTheme.of(context).accent1
                    : FlutterFlowTheme.of(context).secondaryBackground,
                contentPadding:
                    const EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 16.0, 20.0),
              ),
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'Inter',
                    letterSpacing: 0.0,
                  ),
              cursorColor: FlutterFlowTheme.of(context).primary,
              validator:
                  _model.genderTextTextControllerValidator.asValidator(context),
            ),
            Divider(
              height: 2.0,
              thickness: 2.0,
              color: FlutterFlowTheme.of(context).alternate,
            ),
            Text(
              'Course',
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'Inter',
                    letterSpacing: 0.0,
                  ),
            ),
            TextFormField(
              controller: _model.courseTextTextController,
              focusNode: _model.courseTextFocusNode,
              autofocus: true,
              textCapitalization: TextCapitalization.words,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Enter your Course (ex. BS Computer Engineering)',
                labelStyle: FlutterFlowTheme.of(context).labelLarge.override(
                      fontFamily: 'Inter',
                      letterSpacing: 0.0,
                    ),
                hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Inter',
                      letterSpacing: 0.0,
                    ),
                errorStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      color: FlutterFlowTheme.of(context).error,
                      fontSize: 12.0,
                      letterSpacing: 0.0,
                    ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).alternate,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primary,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                filled: true,
                fillColor: (_model.courseTextFocusNode?.hasFocus ?? false)
                    ? FlutterFlowTheme.of(context).accent1
                    : FlutterFlowTheme.of(context).secondaryBackground,
                contentPadding:
                    const EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 16.0, 20.0),
              ),
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'Inter',
                    letterSpacing: 0.0,
                  ),
              cursorColor: FlutterFlowTheme.of(context).primary,
              validator:
                  _model.courseTextTextControllerValidator.asValidator(context),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Enrolled Year',
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 48.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).alternate,
                            width: 2.0,
                          ),
                        ),
                        child: TextFormField(
                          controller: _model.enrolledYearTextBoxTextController,
                          focusNode: _model.enrolledYearTextBoxFocusNode,
                          autofocus: true,
                          textCapitalization: TextCapitalization.words,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Enter Enrolled Year (ex. 2020)',
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                            hintStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                            errorStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  color: FlutterFlowTheme.of(context).error,
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            filled: true,
                            fillColor: (_model.enrolledYearTextBoxFocusNode
                                        ?.hasFocus ??
                                    false)
                                ? FlutterFlowTheme.of(context).accent1
                                : FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                            contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 20.0, 16.0, 20.0),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                          cursorColor: FlutterFlowTheme.of(context).primary,
                          validator: _model
                              .enrolledYearTextBoxTextControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ].divide(const SizedBox(height: 4.0)),
                  ),
                ),
              ].divide(const SizedBox(width: 12.0)),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
              child: FFButtonWidget(
                onPressed: () async {
                  _model.addStudentResult = await AddStudentCall.call(
                    idNumber: widget.idNumber,
                    firstName: _model.firstNameTextController.text,
                    lastName: _model.lastNameTextController.text,
                    course: _model.courseTextTextController.text,
                    gender: _model.genderTextTextController.text,
                    enrolledYear: _model.enrolledYearTextBoxTextController.text,
                  );

                  if ((_model.addStudentResult?.succeeded ?? true)) {
                    Navigator.pop(context);
                    await showDialog(
                      context: context,
                      builder: (alertDialogContext) {
                        return AlertDialog(
                          title: const Text('Account Creation'),
                          content: const Text('Account created successfully!'),
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
                    await showDialog(
                      context: context,
                      builder: (alertDialogContext) {
                        return AlertDialog(
                          title: const Text('Account Creation'),
                          content: const Text('Check your inputs. Please try again.'),
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
                  }

                  safeSetState(() {});
                },
                text: 'Create Account',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 48.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Inter',
                        color: Colors.white,
                        letterSpacing: 0.0,
                      ),
                  elevation: 3.0,
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ].divide(const SizedBox(height: 12.0)).addToEnd(const SizedBox(height: 32.0)),
        ),
      ),
    );
  }
}
