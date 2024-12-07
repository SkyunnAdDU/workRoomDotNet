import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/page_elements_main/nav_bar/nav_bar_widget.dart';
import 'student_report_record_widget.dart' show StudentReportRecordWidget;
import 'package:flutter/material.dart';

class StudentReportRecordModel
    extends FlutterFlowModel<StudentReportRecordWidget> {
  ///  Local state fields for this page.

  List<StudentReportListViewModelStruct> studentReportRecordView = [];
  void addToStudentReportRecordView(StudentReportListViewModelStruct item) =>
      studentReportRecordView.add(item);
  void removeFromStudentReportRecordView(
          StudentReportListViewModelStruct item) =>
      studentReportRecordView.remove(item);
  void removeAtIndexFromStudentReportRecordView(int index) =>
      studentReportRecordView.removeAt(index);
  void insertAtIndexInStudentReportRecordView(
          int index, StudentReportListViewModelStruct item) =>
      studentReportRecordView.insert(index, item);
  void updateStudentReportRecordViewAtIndex(
          int index, Function(StudentReportListViewModelStruct) updateFn) =>
      studentReportRecordView[index] = updateFn(studentReportRecordView[index]);

  StudentViewModelStruct? studentDetailView;
  void updateStudentDetailViewStruct(
      Function(StudentViewModelStruct) updateFn) {
    updateFn(studentDetailView ??= StudentViewModelStruct());
  }

  ReportLogViewModelStruct? studentReportBool;
  void updateStudentReportBoolStruct(
      Function(ReportLogViewModelStruct) updateFn) {
    updateFn(studentReportBool ??= ReportLogViewModelStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getStudentReports)] action in studentReportRecord widget.
  ApiCallResponse? getReportResult;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<StudentReportListViewModelStruct>();
  // Stores action output result for [Backend Call - API (getStudent)] action in Button widget.
  ApiCallResponse? getStudentReportResult;
  // Stores action output result for [Backend Call - API (getReport)] action in Button widget.
  ApiCallResponse? getStudentReportViewResult;
  // Model for navBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    paginatedDataTableController.dispose();
    navBarModel.dispose();
  }
}
