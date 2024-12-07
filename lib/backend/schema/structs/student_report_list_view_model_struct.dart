// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StudentReportListViewModelStruct extends BaseStruct {
  StudentReportListViewModelStruct({
    int? studentReportId,
    String? studentName,
    String? dateCreated,
    String? reportStatus,
    int? studentId,
  })  : _studentReportId = studentReportId,
        _studentName = studentName,
        _dateCreated = dateCreated,
        _reportStatus = reportStatus,
        _studentId = studentId;

  // "studentReportId" field.
  int? _studentReportId;
  int get studentReportId => _studentReportId ?? 0;
  set studentReportId(int? val) => _studentReportId = val;

  void incrementStudentReportId(int amount) =>
      studentReportId = studentReportId + amount;

  bool hasStudentReportId() => _studentReportId != null;

  // "studentName" field.
  String? _studentName;
  String get studentName => _studentName ?? '';
  set studentName(String? val) => _studentName = val;

  bool hasStudentName() => _studentName != null;

  // "dateCreated" field.
  String? _dateCreated;
  String get dateCreated => _dateCreated ?? '';
  set dateCreated(String? val) => _dateCreated = val;

  bool hasDateCreated() => _dateCreated != null;

  // "reportStatus" field.
  String? _reportStatus;
  String get reportStatus => _reportStatus ?? '';
  set reportStatus(String? val) => _reportStatus = val;

  bool hasReportStatus() => _reportStatus != null;

  // "studentId" field.
  int? _studentId;
  int get studentId => _studentId ?? 0;
  set studentId(int? val) => _studentId = val;

  void incrementStudentId(int amount) => studentId = studentId + amount;

  bool hasStudentId() => _studentId != null;

  static StudentReportListViewModelStruct fromMap(Map<String, dynamic> data) =>
      StudentReportListViewModelStruct(
        studentReportId: castToType<int>(data['studentReportId']),
        studentName: data['studentName'] as String?,
        dateCreated: data['dateCreated'] as String?,
        reportStatus: data['reportStatus'] as String?,
        studentId: castToType<int>(data['studentId']),
      );

  static StudentReportListViewModelStruct? maybeFromMap(dynamic data) => data
          is Map
      ? StudentReportListViewModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'studentReportId': _studentReportId,
        'studentName': _studentName,
        'dateCreated': _dateCreated,
        'reportStatus': _reportStatus,
        'studentId': _studentId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'studentReportId': serializeParam(
          _studentReportId,
          ParamType.int,
        ),
        'studentName': serializeParam(
          _studentName,
          ParamType.String,
        ),
        'dateCreated': serializeParam(
          _dateCreated,
          ParamType.String,
        ),
        'reportStatus': serializeParam(
          _reportStatus,
          ParamType.String,
        ),
        'studentId': serializeParam(
          _studentId,
          ParamType.int,
        ),
      }.withoutNulls;

  static StudentReportListViewModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      StudentReportListViewModelStruct(
        studentReportId: deserializeParam(
          data['studentReportId'],
          ParamType.int,
          false,
        ),
        studentName: deserializeParam(
          data['studentName'],
          ParamType.String,
          false,
        ),
        dateCreated: deserializeParam(
          data['dateCreated'],
          ParamType.String,
          false,
        ),
        reportStatus: deserializeParam(
          data['reportStatus'],
          ParamType.String,
          false,
        ),
        studentId: deserializeParam(
          data['studentId'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'StudentReportListViewModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is StudentReportListViewModelStruct &&
        studentReportId == other.studentReportId &&
        studentName == other.studentName &&
        dateCreated == other.dateCreated &&
        reportStatus == other.reportStatus &&
        studentId == other.studentId;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [studentReportId, studentName, dateCreated, reportStatus, studentId]);
}

StudentReportListViewModelStruct createStudentReportListViewModelStruct({
  int? studentReportId,
  String? studentName,
  String? dateCreated,
  String? reportStatus,
  int? studentId,
}) =>
    StudentReportListViewModelStruct(
      studentReportId: studentReportId,
      studentName: studentName,
      dateCreated: dateCreated,
      reportStatus: reportStatus,
      studentId: studentId,
    );
