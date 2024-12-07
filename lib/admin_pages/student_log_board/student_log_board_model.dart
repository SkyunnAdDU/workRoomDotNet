import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/page_elements_main/nav_bar/nav_bar_widget.dart';
import 'student_log_board_widget.dart' show StudentLogBoardWidget;
import 'package:flutter/material.dart';

class StudentLogBoardModel extends FlutterFlowModel<StudentLogBoardWidget> {
  ///  Local state fields for this page.

  List<MainLogViewModelStruct> studentLogView = [];
  void addToStudentLogView(MainLogViewModelStruct item) =>
      studentLogView.add(item);
  void removeFromStudentLogView(MainLogViewModelStruct item) =>
      studentLogView.remove(item);
  void removeAtIndexFromStudentLogView(int index) =>
      studentLogView.removeAt(index);
  void insertAtIndexInStudentLogView(int index, MainLogViewModelStruct item) =>
      studentLogView.insert(index, item);
  void updateStudentLogViewAtIndex(
          int index, Function(MainLogViewModelStruct) updateFn) =>
      studentLogView[index] = updateFn(studentLogView[index]);

  StudentViewModelStruct? studentDetailView;
  void updateStudentDetailViewStruct(
      Function(StudentViewModelStruct) updateFn) {
    updateFn(studentDetailView ??= StudentViewModelStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getRoomLogs )] action in studentLogBoard widget.
  ApiCallResponse? getLogResult;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<MainLogViewModelStruct>();
  // Stores action output result for [Backend Call - API (getStudent)] action in Button widget.
  ApiCallResponse? getStudentResult;
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
