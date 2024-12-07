import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/page_elements_main/nav_bar/nav_bar_widget.dart';
import 'admin_dashboard_widget.dart' show AdminDashboardWidget;
import 'package:flutter/material.dart';

class AdminDashboardModel extends FlutterFlowModel<AdminDashboardWidget> {
  ///  Local state fields for this page.

  DashboardViewModelStruct? dashboardViewModel;
  void updateDashboardViewModelStruct(
      Function(DashboardViewModelStruct) updateFn) {
    updateFn(dashboardViewModel ??= DashboardViewModelStruct());
  }

  DashboardViewModelStruct? chartDashboardData;
  void updateChartDashboardDataStruct(
      Function(DashboardViewModelStruct) updateFn) {
    updateFn(chartDashboardData ??= DashboardViewModelStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getDashboardData)] action in adminDashboard widget.
  ApiCallResponse? getDashboardResult;
  // Model for navBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    navBarModel.dispose();
  }
}
