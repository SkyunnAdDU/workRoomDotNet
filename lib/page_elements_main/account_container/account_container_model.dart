import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'account_container_widget.dart' show AccountContainerWidget;
import 'package:flutter/material.dart';

class AccountContainerModel extends FlutterFlowModel<AccountContainerWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for firstName widget.
  FocusNode? firstNameFocusNode;
  TextEditingController? firstNameTextController;
  String? Function(BuildContext, String?)? firstNameTextControllerValidator;
  // State field(s) for lastName widget.
  FocusNode? lastNameFocusNode;
  TextEditingController? lastNameTextController;
  String? Function(BuildContext, String?)? lastNameTextControllerValidator;
  // State field(s) for genderText widget.
  FocusNode? genderTextFocusNode;
  TextEditingController? genderTextTextController;
  String? Function(BuildContext, String?)? genderTextTextControllerValidator;
  // State field(s) for courseText widget.
  FocusNode? courseTextFocusNode;
  TextEditingController? courseTextTextController;
  String? Function(BuildContext, String?)? courseTextTextControllerValidator;
  // State field(s) for enrolledYearTextBox widget.
  FocusNode? enrolledYearTextBoxFocusNode;
  TextEditingController? enrolledYearTextBoxTextController;
  String? Function(BuildContext, String?)?
      enrolledYearTextBoxTextControllerValidator;
  // Stores action output result for [Backend Call - API (addStudent)] action in Button widget.
  ApiCallResponse? addStudentResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    firstNameFocusNode?.dispose();
    firstNameTextController?.dispose();

    lastNameFocusNode?.dispose();
    lastNameTextController?.dispose();

    genderTextFocusNode?.dispose();
    genderTextTextController?.dispose();

    courseTextFocusNode?.dispose();
    courseTextTextController?.dispose();

    enrolledYearTextBoxFocusNode?.dispose();
    enrolledYearTextBoxTextController?.dispose();
  }
}
