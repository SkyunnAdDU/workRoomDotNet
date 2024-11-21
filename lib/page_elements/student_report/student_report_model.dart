import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'student_report_widget.dart' show StudentReportWidget;
import 'package:flutter/material.dart';

class StudentReportModel extends FlutterFlowModel<StudentReportWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for studentChoiceChips widget.
  FormFieldController<List<String>>? studentChoiceChipsValueController;
  String? get studentChoiceChipsValue =>
      studentChoiceChipsValueController?.value?.firstOrNull;
  set studentChoiceChipsValue(String? val) =>
      studentChoiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode1;
  TextEditingController? descriptionTextController1;
  String? Function(BuildContext, String?)? descriptionTextController1Validator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode2;
  TextEditingController? descriptionTextController2;
  String? Function(BuildContext, String?)? descriptionTextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    descriptionFocusNode1?.dispose();
    descriptionTextController1?.dispose();

    descriptionFocusNode2?.dispose();
    descriptionTextController2?.dispose();
  }
}
