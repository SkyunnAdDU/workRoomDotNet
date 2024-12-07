// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ItemReportListViewModelStruct extends BaseStruct {
  ItemReportListViewModelStruct({
    int? itemReportId,
    String? title,
    String? reportType,
    String? dateCreated,
    String? reportedBy,
    String? reportStatus,
  })  : _itemReportId = itemReportId,
        _title = title,
        _reportType = reportType,
        _dateCreated = dateCreated,
        _reportedBy = reportedBy,
        _reportStatus = reportStatus;

  // "itemReportId" field.
  int? _itemReportId;
  int get itemReportId => _itemReportId ?? 0;
  set itemReportId(int? val) => _itemReportId = val;

  void incrementItemReportId(int amount) =>
      itemReportId = itemReportId + amount;

  bool hasItemReportId() => _itemReportId != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "reportType" field.
  String? _reportType;
  String get reportType => _reportType ?? '';
  set reportType(String? val) => _reportType = val;

  bool hasReportType() => _reportType != null;

  // "dateCreated" field.
  String? _dateCreated;
  String get dateCreated => _dateCreated ?? '';
  set dateCreated(String? val) => _dateCreated = val;

  bool hasDateCreated() => _dateCreated != null;

  // "reportedBy" field.
  String? _reportedBy;
  String get reportedBy => _reportedBy ?? '';
  set reportedBy(String? val) => _reportedBy = val;

  bool hasReportedBy() => _reportedBy != null;

  // "reportStatus" field.
  String? _reportStatus;
  String get reportStatus => _reportStatus ?? '';
  set reportStatus(String? val) => _reportStatus = val;

  bool hasReportStatus() => _reportStatus != null;

  static ItemReportListViewModelStruct fromMap(Map<String, dynamic> data) =>
      ItemReportListViewModelStruct(
        itemReportId: castToType<int>(data['itemReportId']),
        title: data['title'] as String?,
        reportType: data['reportType'] as String?,
        dateCreated: data['dateCreated'] as String?,
        reportedBy: data['reportedBy'] as String?,
        reportStatus: data['reportStatus'] as String?,
      );

  static ItemReportListViewModelStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? ItemReportListViewModelStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'itemReportId': _itemReportId,
        'title': _title,
        'reportType': _reportType,
        'dateCreated': _dateCreated,
        'reportedBy': _reportedBy,
        'reportStatus': _reportStatus,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'itemReportId': serializeParam(
          _itemReportId,
          ParamType.int,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'reportType': serializeParam(
          _reportType,
          ParamType.String,
        ),
        'dateCreated': serializeParam(
          _dateCreated,
          ParamType.String,
        ),
        'reportedBy': serializeParam(
          _reportedBy,
          ParamType.String,
        ),
        'reportStatus': serializeParam(
          _reportStatus,
          ParamType.String,
        ),
      }.withoutNulls;

  static ItemReportListViewModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ItemReportListViewModelStruct(
        itemReportId: deserializeParam(
          data['itemReportId'],
          ParamType.int,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        reportType: deserializeParam(
          data['reportType'],
          ParamType.String,
          false,
        ),
        dateCreated: deserializeParam(
          data['dateCreated'],
          ParamType.String,
          false,
        ),
        reportedBy: deserializeParam(
          data['reportedBy'],
          ParamType.String,
          false,
        ),
        reportStatus: deserializeParam(
          data['reportStatus'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ItemReportListViewModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ItemReportListViewModelStruct &&
        itemReportId == other.itemReportId &&
        title == other.title &&
        reportType == other.reportType &&
        dateCreated == other.dateCreated &&
        reportedBy == other.reportedBy &&
        reportStatus == other.reportStatus;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [itemReportId, title, reportType, dateCreated, reportedBy, reportStatus]);
}

ItemReportListViewModelStruct createItemReportListViewModelStruct({
  int? itemReportId,
  String? title,
  String? reportType,
  String? dateCreated,
  String? reportedBy,
  String? reportStatus,
}) =>
    ItemReportListViewModelStruct(
      itemReportId: itemReportId,
      title: title,
      reportType: reportType,
      dateCreated: dateCreated,
      reportedBy: reportedBy,
      reportStatus: reportStatus,
    );
