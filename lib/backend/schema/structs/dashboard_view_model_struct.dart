// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DashboardViewModelStruct extends BaseStruct {
  DashboardViewModelStruct({
    int? totalStudents,
    int? totalItemReports,
    int? totalStudentReports,
    int? totalStudentTimeIns,
    int? totalResolvedItems,
    int? totalUnresolvedItems,
    List<int>? monthlyRoomUsage,
    List<int>? courseActivity,
    List<String>? courseName,
  })  : _totalStudents = totalStudents,
        _totalItemReports = totalItemReports,
        _totalStudentReports = totalStudentReports,
        _totalStudentTimeIns = totalStudentTimeIns,
        _totalResolvedItems = totalResolvedItems,
        _totalUnresolvedItems = totalUnresolvedItems,
        _monthlyRoomUsage = monthlyRoomUsage,
        _courseActivity = courseActivity,
        _courseName = courseName;

  // "totalStudents" field.
  int? _totalStudents;
  int get totalStudents => _totalStudents ?? 0;
  set totalStudents(int? val) => _totalStudents = val;

  void incrementTotalStudents(int amount) =>
      totalStudents = totalStudents + amount;

  bool hasTotalStudents() => _totalStudents != null;

  // "totalItemReports" field.
  int? _totalItemReports;
  int get totalItemReports => _totalItemReports ?? 0;
  set totalItemReports(int? val) => _totalItemReports = val;

  void incrementTotalItemReports(int amount) =>
      totalItemReports = totalItemReports + amount;

  bool hasTotalItemReports() => _totalItemReports != null;

  // "totalStudentReports" field.
  int? _totalStudentReports;
  int get totalStudentReports => _totalStudentReports ?? 0;
  set totalStudentReports(int? val) => _totalStudentReports = val;

  void incrementTotalStudentReports(int amount) =>
      totalStudentReports = totalStudentReports + amount;

  bool hasTotalStudentReports() => _totalStudentReports != null;

  // "totalStudentTimeIns" field.
  int? _totalStudentTimeIns;
  int get totalStudentTimeIns => _totalStudentTimeIns ?? 0;
  set totalStudentTimeIns(int? val) => _totalStudentTimeIns = val;

  void incrementTotalStudentTimeIns(int amount) =>
      totalStudentTimeIns = totalStudentTimeIns + amount;

  bool hasTotalStudentTimeIns() => _totalStudentTimeIns != null;

  // "totalResolvedItems" field.
  int? _totalResolvedItems;
  int get totalResolvedItems => _totalResolvedItems ?? 0;
  set totalResolvedItems(int? val) => _totalResolvedItems = val;

  void incrementTotalResolvedItems(int amount) =>
      totalResolvedItems = totalResolvedItems + amount;

  bool hasTotalResolvedItems() => _totalResolvedItems != null;

  // "totalUnresolvedItems" field.
  int? _totalUnresolvedItems;
  int get totalUnresolvedItems => _totalUnresolvedItems ?? 0;
  set totalUnresolvedItems(int? val) => _totalUnresolvedItems = val;

  void incrementTotalUnresolvedItems(int amount) =>
      totalUnresolvedItems = totalUnresolvedItems + amount;

  bool hasTotalUnresolvedItems() => _totalUnresolvedItems != null;

  // "monthlyRoomUsage" field.
  List<int>? _monthlyRoomUsage;
  List<int> get monthlyRoomUsage => _monthlyRoomUsage ?? const [];
  set monthlyRoomUsage(List<int>? val) => _monthlyRoomUsage = val;

  void updateMonthlyRoomUsage(Function(List<int>) updateFn) {
    updateFn(_monthlyRoomUsage ??= []);
  }

  bool hasMonthlyRoomUsage() => _monthlyRoomUsage != null;

  // "courseActivity" field.
  List<int>? _courseActivity;
  List<int> get courseActivity => _courseActivity ?? const [];
  set courseActivity(List<int>? val) => _courseActivity = val;

  void updateCourseActivity(Function(List<int>) updateFn) {
    updateFn(_courseActivity ??= []);
  }

  bool hasCourseActivity() => _courseActivity != null;

  // "courseName" field.
  List<String>? _courseName;
  List<String> get courseName => _courseName ?? const [];
  set courseName(List<String>? val) => _courseName = val;

  void updateCourseName(Function(List<String>) updateFn) {
    updateFn(_courseName ??= []);
  }

  bool hasCourseName() => _courseName != null;

  static DashboardViewModelStruct fromMap(Map<String, dynamic> data) =>
      DashboardViewModelStruct(
        totalStudents: castToType<int>(data['totalStudents']),
        totalItemReports: castToType<int>(data['totalItemReports']),
        totalStudentReports: castToType<int>(data['totalStudentReports']),
        totalStudentTimeIns: castToType<int>(data['totalStudentTimeIns']),
        totalResolvedItems: castToType<int>(data['totalResolvedItems']),
        totalUnresolvedItems: castToType<int>(data['totalUnresolvedItems']),
        monthlyRoomUsage: getDataList(data['monthlyRoomUsage']),
        courseActivity: getDataList(data['courseActivity']),
        courseName: getDataList(data['courseName']),
      );

  static DashboardViewModelStruct? maybeFromMap(dynamic data) => data is Map
      ? DashboardViewModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'totalStudents': _totalStudents,
        'totalItemReports': _totalItemReports,
        'totalStudentReports': _totalStudentReports,
        'totalStudentTimeIns': _totalStudentTimeIns,
        'totalResolvedItems': _totalResolvedItems,
        'totalUnresolvedItems': _totalUnresolvedItems,
        'monthlyRoomUsage': _monthlyRoomUsage,
        'courseActivity': _courseActivity,
        'courseName': _courseName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'totalStudents': serializeParam(
          _totalStudents,
          ParamType.int,
        ),
        'totalItemReports': serializeParam(
          _totalItemReports,
          ParamType.int,
        ),
        'totalStudentReports': serializeParam(
          _totalStudentReports,
          ParamType.int,
        ),
        'totalStudentTimeIns': serializeParam(
          _totalStudentTimeIns,
          ParamType.int,
        ),
        'totalResolvedItems': serializeParam(
          _totalResolvedItems,
          ParamType.int,
        ),
        'totalUnresolvedItems': serializeParam(
          _totalUnresolvedItems,
          ParamType.int,
        ),
        'monthlyRoomUsage': serializeParam(
          _monthlyRoomUsage,
          ParamType.int,
          isList: true,
        ),
        'courseActivity': serializeParam(
          _courseActivity,
          ParamType.int,
          isList: true,
        ),
        'courseName': serializeParam(
          _courseName,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static DashboardViewModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DashboardViewModelStruct(
        totalStudents: deserializeParam(
          data['totalStudents'],
          ParamType.int,
          false,
        ),
        totalItemReports: deserializeParam(
          data['totalItemReports'],
          ParamType.int,
          false,
        ),
        totalStudentReports: deserializeParam(
          data['totalStudentReports'],
          ParamType.int,
          false,
        ),
        totalStudentTimeIns: deserializeParam(
          data['totalStudentTimeIns'],
          ParamType.int,
          false,
        ),
        totalResolvedItems: deserializeParam(
          data['totalResolvedItems'],
          ParamType.int,
          false,
        ),
        totalUnresolvedItems: deserializeParam(
          data['totalUnresolvedItems'],
          ParamType.int,
          false,
        ),
        monthlyRoomUsage: deserializeParam<int>(
          data['monthlyRoomUsage'],
          ParamType.int,
          true,
        ),
        courseActivity: deserializeParam<int>(
          data['courseActivity'],
          ParamType.int,
          true,
        ),
        courseName: deserializeParam<String>(
          data['courseName'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'DashboardViewModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DashboardViewModelStruct &&
        totalStudents == other.totalStudents &&
        totalItemReports == other.totalItemReports &&
        totalStudentReports == other.totalStudentReports &&
        totalStudentTimeIns == other.totalStudentTimeIns &&
        totalResolvedItems == other.totalResolvedItems &&
        totalUnresolvedItems == other.totalUnresolvedItems &&
        listEquality.equals(monthlyRoomUsage, other.monthlyRoomUsage) &&
        listEquality.equals(courseActivity, other.courseActivity) &&
        listEquality.equals(courseName, other.courseName);
  }

  @override
  int get hashCode => const ListEquality().hash([
        totalStudents,
        totalItemReports,
        totalStudentReports,
        totalStudentTimeIns,
        totalResolvedItems,
        totalUnresolvedItems,
        monthlyRoomUsage,
        courseActivity,
        courseName
      ]);
}

DashboardViewModelStruct createDashboardViewModelStruct({
  int? totalStudents,
  int? totalItemReports,
  int? totalStudentReports,
  int? totalStudentTimeIns,
  int? totalResolvedItems,
  int? totalUnresolvedItems,
}) =>
    DashboardViewModelStruct(
      totalStudents: totalStudents,
      totalItemReports: totalItemReports,
      totalStudentReports: totalStudentReports,
      totalStudentTimeIns: totalStudentTimeIns,
      totalResolvedItems: totalResolvedItems,
      totalUnresolvedItems: totalUnresolvedItems,
    );
