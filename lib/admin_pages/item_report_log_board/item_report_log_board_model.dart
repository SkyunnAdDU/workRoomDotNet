import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/page_elements_main/nav_bar/nav_bar_widget.dart';
import 'item_report_log_board_widget.dart' show ItemReportLogBoardWidget;
import 'package:flutter/material.dart';

class ItemReportLogBoardModel
    extends FlutterFlowModel<ItemReportLogBoardWidget> {
  ///  Local state fields for this page.

  List<ItemReportListViewModelStruct> itemReportListView = [];
  void addToItemReportListView(ItemReportListViewModelStruct item) =>
      itemReportListView.add(item);
  void removeFromItemReportListView(ItemReportListViewModelStruct item) =>
      itemReportListView.remove(item);
  void removeAtIndexFromItemReportListView(int index) =>
      itemReportListView.removeAt(index);
  void insertAtIndexInItemReportListView(
          int index, ItemReportListViewModelStruct item) =>
      itemReportListView.insert(index, item);
  void updateItemReportListViewAtIndex(
          int index, Function(ItemReportListViewModelStruct) updateFn) =>
      itemReportListView[index] = updateFn(itemReportListView[index]);

  ReportLogViewModelStruct? itemReportBool;
  void updateItemReportBoolStruct(Function(ReportLogViewModelStruct) updateFn) {
    updateFn(itemReportBool ??= ReportLogViewModelStruct());
  }

  StudentViewModelStruct? studentViewModel;
  void updateStudentViewModelStruct(Function(StudentViewModelStruct) updateFn) {
    updateFn(studentViewModel ??= StudentViewModelStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getItemReports)] action in itemReportLogBoard widget.
  ApiCallResponse? apiItemReportResult;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<ItemReportListViewModelStruct>();
  // Stores action output result for [Backend Call - API (getReport)] action in Button widget.
  ApiCallResponse? getItemReportViewResult;
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
