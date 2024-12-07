import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'item_report_model.dart';
export 'item_report_model.dart';

class ItemReportWidget extends StatefulWidget {
  const ItemReportWidget({super.key});

  @override
  State<ItemReportWidget> createState() => _ItemReportWidgetState();
}

class _ItemReportWidgetState extends State<ItemReportWidget> {
  late ItemReportModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ItemReportModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.getStudentsDropdownResult = await GetStudentsCall.call();

      if ((_model.getStudentsDropdownResult?.succeeded ?? true)) {
        _model.updateGetStudentsDropdownStruct(
          (e) => e
            ..studentId = _model.getStudentsDropdown?.studentId
            ..idNumber = _model.getStudentsDropdown?.idNumber
            ..firstName = _model.getStudentsDropdown?.firstName
            ..lastName = _model.getStudentsDropdown?.lastName
            ..course = _model.getStudentsDropdown?.course
            ..gender = _model.getStudentsDropdown?.gender
            ..enrolledYear = _model.getStudentsDropdown?.enrolledYear,
        );
        safeSetState(() {});
      }
    });

    _model.itemReportDescriptionTextController ??= TextEditingController();
    _model.itemReportDescriptionFocusNode ??= FocusNode();
    _model.itemReportDescriptionFocusNode!
        .addListener(() => safeSetState(() {}));
    _model.descriptionTextController ??= TextEditingController();
    _model.descriptionFocusNode ??= FocusNode();
    _model.descriptionFocusNode!.addListener(() => safeSetState(() {}));
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
              'Report Item',
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
            Flexible(
              child: FlutterFlowDropDown<String>(
                controller: _model.dropDownValueController ??=
                    FormFieldController<String>(
                  _model.dropDownValue ??= '',
                ),
                options: List<String>.from(
                    ((_model.getStudentsDropdownResult?.jsonBody ?? '')
                            .toList()
                            .map<StudentViewModelStruct?>(
                                StudentViewModelStruct.maybeFromMap)
                            .toList() as Iterable<StudentViewModelStruct?>)
                        .withoutNulls
                        .map((e) => e.idNumber)
                        .toList()),
                optionLabels:
                    ((_model.getStudentsDropdownResult?.jsonBody ?? '')
                            .toList()
                            .map<StudentViewModelStruct?>(
                                StudentViewModelStruct.maybeFromMap)
                            .toList() as Iterable<StudentViewModelStruct?>)
                        .withoutNulls
                        .map((e) => e.firstName)
                        .toList(),
                onChanged: (val) =>
                    safeSetState(() => _model.dropDownValue = val),
                width: double.infinity,
                height: 40.0,
                searchHintTextStyle:
                    FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                searchTextStyle:
                    FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      fontSize: 15.0,
                      letterSpacing: 0.0,
                    ),
                hintText: 'Select your Name',
                searchHintText: 'Search...',
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 30.0,
                ),
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                elevation: 2.0,
                borderColor: Colors.black,
                borderWidth: 0.0,
                borderRadius: 8.0,
                margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                hidesUnderline: true,
                isOverButton: false,
                isSearchable: true,
                isMultiSelect: false,
              ),
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
                        'What item do you want to be reported',
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                      ),
                      TextFormField(
                        controller: _model.itemReportDescriptionTextController,
                        focusNode: _model.itemReportDescriptionFocusNode,
                        autofocus: true,
                        textCapitalization: TextCapitalization.words,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Item Description',
                          labelStyle:
                              FlutterFlowTheme.of(context).labelLarge.override(
                                    fontFamily: 'Inter',
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    lineHeight: 0.0,
                                  ),
                          alignLabelWithHint: true,
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                          errorStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
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
                          fillColor: (_model.itemReportDescriptionFocusNode
                                      ?.hasFocus ??
                                  false)
                              ? FlutterFlowTheme.of(context).accent1
                              : FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                          contentPadding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 16.0, 16.0),
                        ),
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily: 'Inter',
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                            ),
                        maxLines: 9,
                        minLines: 2,
                        cursorColor: FlutterFlowTheme.of(context).primary,
                        validator: _model
                            .itemReportDescriptionTextControllerValidator
                            .asValidator(context),
                      ),
                    ].divide(const SizedBox(height: 4.0)),
                  ),
                ),
              ].divide(const SizedBox(width: 12.0)),
            ),
            Text(
              'Item Status',
              style: FlutterFlowTheme.of(context).labelMedium.override(
                    fontFamily: 'Inter',
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                  ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Material(
                    color: Colors.transparent,
                    child: SwitchListTile.adaptive(
                      value: _model.switchListTileDamagedValue ??= true,
                      onChanged: (newValue) async {
                        safeSetState(() =>
                            _model.switchListTileDamagedValue = newValue);
                      },
                      title: Text(
                        'Damaged',
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                      ),
                      tileColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      activeColor: FlutterFlowTheme.of(context).alternate,
                      activeTrackColor: FlutterFlowTheme.of(context).primary,
                      dense: false,
                      controlAffinity: ListTileControlAffinity.trailing,
                    ),
                  ),
                ),
                Expanded(
                  child: Material(
                    color: Colors.transparent,
                    child: SwitchListTile.adaptive(
                      value: _model.switchListTileNotWorkingValue ??= true,
                      onChanged: (newValue) async {
                        safeSetState(() =>
                            _model.switchListTileNotWorkingValue = newValue);
                      },
                      title: Text(
                        'Not Working',
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                      ),
                      tileColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      activeColor: FlutterFlowTheme.of(context).alternate,
                      activeTrackColor: FlutterFlowTheme.of(context).primary,
                      dense: false,
                      controlAffinity: ListTileControlAffinity.trailing,
                    ),
                  ),
                ),
              ],
            ),
            Divider(
              height: 2.0,
              thickness: 2.0,
              color: FlutterFlowTheme.of(context).alternate,
            ),
            Text(
              'Needed Action',
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'Inter',
                    letterSpacing: 0.0,
                  ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Material(
                    color: Colors.transparent,
                    child: SwitchListTile.adaptive(
                      value: _model.switchListTileRepairValue ??= true,
                      onChanged: (newValue) async {
                        safeSetState(
                            () => _model.switchListTileRepairValue = newValue);
                      },
                      title: Text(
                        'Repair',
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                      ),
                      tileColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      activeColor: FlutterFlowTheme.of(context).alternate,
                      activeTrackColor: FlutterFlowTheme.of(context).primary,
                      dense: false,
                      controlAffinity: ListTileControlAffinity.trailing,
                    ),
                  ),
                ),
                Expanded(
                  child: Material(
                    color: Colors.transparent,
                    child: SwitchListTile.adaptive(
                      value: _model.switchListTileReplaceValue ??= true,
                      onChanged: (newValue) async {
                        safeSetState(() =>
                            _model.switchListTileReplaceValue = newValue);
                      },
                      title: Text(
                        'Replace',
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                      ),
                      tileColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      activeColor: FlutterFlowTheme.of(context).alternate,
                      activeTrackColor: FlutterFlowTheme.of(context).primary,
                      dense: false,
                      controlAffinity: ListTileControlAffinity.trailing,
                    ),
                  ),
                ),
              ],
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
                        'Specific Description',
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                      ),
                      TextFormField(
                        controller: _model.descriptionTextController,
                        focusNode: _model.descriptionFocusNode,
                        autofocus: true,
                        textCapitalization: TextCapitalization.words,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Give additional information...',
                          labelStyle:
                              FlutterFlowTheme.of(context).labelLarge.override(
                                    fontFamily: 'Inter',
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                  ),
                          alignLabelWithHint: true,
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                          errorStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
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
                          fillColor:
                              (_model.descriptionFocusNode?.hasFocus ?? false)
                                  ? FlutterFlowTheme.of(context).accent1
                                  : FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                          contentPadding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 16.0, 16.0),
                        ),
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                        maxLines: 9,
                        minLines: 4,
                        cursorColor: FlutterFlowTheme.of(context).primary,
                        validator: _model.descriptionTextControllerValidator
                            .asValidator(context),
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
                  _model.addItemReportResult = await AddReportCall.call(
                    idNumber: _model.dropDownValue,
                    name: '',
                    description: _model.descriptionTextController.text,
                    title: _model.itemReportDescriptionTextController.text,
                    itemName: _model.itemReportDescriptionTextController.text,
                    reportTypeId: 2,
                    isNoisy: false,
                    isCussing: false,
                    isEating: false,
                    isUntidy: false,
                    isDamaged: _model.switchListTileDamagedValue,
                    isNotWorking: _model.switchListTileNotWorkingValue,
                    isResolved: false,
                    action: 1,
                    studentId: 1,
                  );

                  if ((_model.addItemReportResult?.succeeded ?? true)) {
                    context.pushNamed('homePage');
                  } else {
                    await showDialog(
                      context: context,
                      builder: (alertDialogContext) {
                        return AlertDialog(
                          title: const Text('Report Creation Failed'),
                          content:
                              const Text('Check your form inputs, please try again.'),
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
                text: 'Submit Report',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 48.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).success,
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
