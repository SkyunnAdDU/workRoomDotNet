import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'item_report_widget.dart' show ItemReportWidget;
import 'package:flutter/material.dart';

class ItemReportModel extends FlutterFlowModel<ItemReportWidget> {
  ///  Local state fields for this component.

  StudentViewModelStruct? getStudentsDropdown;
  void updateGetStudentsDropdownStruct(
      Function(StudentViewModelStruct) updateFn) {
    updateFn(getStudentsDropdown ??= StudentViewModelStruct());
  }

  ReportLogViewModelStruct? reportViewModel;
  void updateReportViewModelStruct(
      Function(ReportLogViewModelStruct) updateFn) {
    updateFn(reportViewModel ??= ReportLogViewModelStruct());
  }

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (getStudents)] action in itemReport widget.
  ApiCallResponse? getStudentsDropdownResult;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for itemReportDescription widget.
  FocusNode? itemReportDescriptionFocusNode;
  TextEditingController? itemReportDescriptionTextController;
  String? Function(BuildContext, String?)?
      itemReportDescriptionTextControllerValidator;
  // State field(s) for SwitchListTileDamaged widget.
  bool? switchListTileDamagedValue;
  // State field(s) for SwitchListTileNotWorking widget.
  bool? switchListTileNotWorkingValue;
  // State field(s) for SwitchListTileRepair widget.
  bool? switchListTileRepairValue;
  // State field(s) for SwitchListTileReplace widget.
  bool? switchListTileReplaceValue;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // Stores action output result for [Backend Call - API (addReport)] action in Button widget.
  ApiCallResponse? addItemReportResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    itemReportDescriptionFocusNode?.dispose();
    itemReportDescriptionTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
