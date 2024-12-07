import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'student_report_widget.dart' show StudentReportWidget;
import 'package:flutter/material.dart';

class StudentReportModel extends FlutterFlowModel<StudentReportWidget> {
  ///  Local state fields for this component.

  ReportLogViewModelStruct? reportViewModel;
  void updateReportViewModelStruct(
      Function(ReportLogViewModelStruct) updateFn) {
    updateFn(reportViewModel ??= ReportLogViewModelStruct());
  }

  ///  State fields for stateful widgets in this component.

  // State field(s) for SwitchListTileNoisy widget.
  bool? switchListTileNoisyValue;
  // State field(s) for SwitchListTileCussing widget.
  bool? switchListTileCussingValue;
  // State field(s) for SwitchListTileEating widget.
  bool? switchListTileEatingValue;
  // State field(s) for SwitchListTileUntidy widget.
  bool? switchListTileUntidyValue;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // Stores action output result for [Backend Call - API (addReport)] action in Button widget.
  ApiCallResponse? addStudentReportResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
