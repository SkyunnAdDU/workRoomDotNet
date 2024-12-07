import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/page_elements_main/nav_bar/nav_bar_widget.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  List<MainLogViewModelStruct> homePageView = [];
  void addToHomePageView(MainLogViewModelStruct item) => homePageView.add(item);
  void removeFromHomePageView(MainLogViewModelStruct item) =>
      homePageView.remove(item);
  void removeAtIndexFromHomePageView(int index) => homePageView.removeAt(index);
  void insertAtIndexInHomePageView(int index, MainLogViewModelStruct item) =>
      homePageView.insert(index, item);
  void updateHomePageViewAtIndex(
          int index, Function(MainLogViewModelStruct) updateFn) =>
      homePageView[index] = updateFn(homePageView[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getRoomLogs )] action in homePage widget.
  ApiCallResponse? roomDatabaseResult;
  // State field(s) for idNumberTextInput widget.
  FocusNode? idNumberTextInputFocusNode;
  TextEditingController? idNumberTextInputTextController;
  String? Function(BuildContext, String?)?
      idNumberTextInputTextControllerValidator;
  // Stores action output result for [Backend Call - API (verifyStudent)] action in idNumberTextInput widget.
  ApiCallResponse? verifyStudentResultTextField;
  // Stores action output result for [Backend Call - API (addLog)] action in idNumberTextInput widget.
  ApiCallResponse? addLogResult;
  // Stores action output result for [Backend Call - API (verifyStudent)] action in Button widget.
  ApiCallResponse? verifyStudentResultButton;
  // Stores action output result for [Backend Call - API (addLog)] action in Button widget.
  ApiCallResponse? addLogResultButton;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<MainLogViewModelStruct>();
  // Stores action output result for [Backend Call - API (updateLogTimeOut)] action in Button widget.
  ApiCallResponse? updateTimeOutResult;
  // Model for navBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    idNumberTextInputFocusNode?.dispose();
    idNumberTextInputTextController?.dispose();

    paginatedDataTableController.dispose();
    navBarModel.dispose();
  }
}
