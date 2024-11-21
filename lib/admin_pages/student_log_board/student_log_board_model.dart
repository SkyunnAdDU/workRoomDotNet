import '/flutter_flow/flutter_flow_util.dart';
import '/page_elements/nav_bar/nav_bar_widget.dart';
import 'student_log_board_widget.dart' show StudentLogBoardWidget;
import 'package:flutter/material.dart';

class StudentLogBoardModel extends FlutterFlowModel<StudentLogBoardWidget> {
  ///  State fields for stateful widgets in this page.

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
