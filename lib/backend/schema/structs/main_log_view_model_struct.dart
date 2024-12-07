// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MainLogViewModelStruct extends BaseStruct {
  MainLogViewModelStruct({
    int? logId,
    int? studentId,
    int? roomId,
    String? studentName,
    String? roomName,
    String? dateOfVisit,
    String? timeIn,
    String? timeOut,
    bool? isReported,
  })  : _logId = logId,
        _studentId = studentId,
        _roomId = roomId,
        _studentName = studentName,
        _roomName = roomName,
        _dateOfVisit = dateOfVisit,
        _timeIn = timeIn,
        _timeOut = timeOut,
        _isReported = isReported;

  // "logId" field.
  int? _logId;
  int get logId => _logId ?? 0;
  set logId(int? val) => _logId = val;

  void incrementLogId(int amount) => logId = logId + amount;

  bool hasLogId() => _logId != null;

  // "studentId" field.
  int? _studentId;
  int get studentId => _studentId ?? 0;
  set studentId(int? val) => _studentId = val;

  void incrementStudentId(int amount) => studentId = studentId + amount;

  bool hasStudentId() => _studentId != null;

  // "roomId" field.
  int? _roomId;
  int get roomId => _roomId ?? 0;
  set roomId(int? val) => _roomId = val;

  void incrementRoomId(int amount) => roomId = roomId + amount;

  bool hasRoomId() => _roomId != null;

  // "studentName" field.
  String? _studentName;
  String get studentName => _studentName ?? '';
  set studentName(String? val) => _studentName = val;

  bool hasStudentName() => _studentName != null;

  // "roomName" field.
  String? _roomName;
  String get roomName => _roomName ?? '';
  set roomName(String? val) => _roomName = val;

  bool hasRoomName() => _roomName != null;

  // "dateOfVisit" field.
  String? _dateOfVisit;
  String get dateOfVisit => _dateOfVisit ?? '';
  set dateOfVisit(String? val) => _dateOfVisit = val;

  bool hasDateOfVisit() => _dateOfVisit != null;

  // "timeIn" field.
  String? _timeIn;
  String get timeIn => _timeIn ?? '';
  set timeIn(String? val) => _timeIn = val;

  bool hasTimeIn() => _timeIn != null;

  // "timeOut" field.
  String? _timeOut;
  String get timeOut => _timeOut ?? '';
  set timeOut(String? val) => _timeOut = val;

  bool hasTimeOut() => _timeOut != null;

  // "isReported" field.
  bool? _isReported;
  bool get isReported => _isReported ?? false;
  set isReported(bool? val) => _isReported = val;

  bool hasIsReported() => _isReported != null;

  static MainLogViewModelStruct fromMap(Map<String, dynamic> data) =>
      MainLogViewModelStruct(
        logId: castToType<int>(data['logId']),
        studentId: castToType<int>(data['studentId']),
        roomId: castToType<int>(data['roomId']),
        studentName: data['studentName'] as String?,
        roomName: data['roomName'] as String?,
        dateOfVisit: data['dateOfVisit'] as String?,
        timeIn: data['timeIn'] as String?,
        timeOut: data['timeOut'] as String?,
        isReported: data['isReported'] as bool?,
      );

  static MainLogViewModelStruct? maybeFromMap(dynamic data) => data is Map
      ? MainLogViewModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'logId': _logId,
        'studentId': _studentId,
        'roomId': _roomId,
        'studentName': _studentName,
        'roomName': _roomName,
        'dateOfVisit': _dateOfVisit,
        'timeIn': _timeIn,
        'timeOut': _timeOut,
        'isReported': _isReported,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'logId': serializeParam(
          _logId,
          ParamType.int,
        ),
        'studentId': serializeParam(
          _studentId,
          ParamType.int,
        ),
        'roomId': serializeParam(
          _roomId,
          ParamType.int,
        ),
        'studentName': serializeParam(
          _studentName,
          ParamType.String,
        ),
        'roomName': serializeParam(
          _roomName,
          ParamType.String,
        ),
        'dateOfVisit': serializeParam(
          _dateOfVisit,
          ParamType.String,
        ),
        'timeIn': serializeParam(
          _timeIn,
          ParamType.String,
        ),
        'timeOut': serializeParam(
          _timeOut,
          ParamType.String,
        ),
        'isReported': serializeParam(
          _isReported,
          ParamType.bool,
        ),
      }.withoutNulls;

  static MainLogViewModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      MainLogViewModelStruct(
        logId: deserializeParam(
          data['logId'],
          ParamType.int,
          false,
        ),
        studentId: deserializeParam(
          data['studentId'],
          ParamType.int,
          false,
        ),
        roomId: deserializeParam(
          data['roomId'],
          ParamType.int,
          false,
        ),
        studentName: deserializeParam(
          data['studentName'],
          ParamType.String,
          false,
        ),
        roomName: deserializeParam(
          data['roomName'],
          ParamType.String,
          false,
        ),
        dateOfVisit: deserializeParam(
          data['dateOfVisit'],
          ParamType.String,
          false,
        ),
        timeIn: deserializeParam(
          data['timeIn'],
          ParamType.String,
          false,
        ),
        timeOut: deserializeParam(
          data['timeOut'],
          ParamType.String,
          false,
        ),
        isReported: deserializeParam(
          data['isReported'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'MainLogViewModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MainLogViewModelStruct &&
        logId == other.logId &&
        studentId == other.studentId &&
        roomId == other.roomId &&
        studentName == other.studentName &&
        roomName == other.roomName &&
        dateOfVisit == other.dateOfVisit &&
        timeIn == other.timeIn &&
        timeOut == other.timeOut &&
        isReported == other.isReported;
  }

  @override
  int get hashCode => const ListEquality().hash([
        logId,
        studentId,
        roomId,
        studentName,
        roomName,
        dateOfVisit,
        timeIn,
        timeOut,
        isReported
      ]);
}

MainLogViewModelStruct createMainLogViewModelStruct({
  int? logId,
  int? studentId,
  int? roomId,
  String? studentName,
  String? roomName,
  String? dateOfVisit,
  String? timeIn,
  String? timeOut,
  bool? isReported,
}) =>
    MainLogViewModelStruct(
      logId: logId,
      studentId: studentId,
      roomId: roomId,
      studentName: studentName,
      roomName: roomName,
      dateOfVisit: dateOfVisit,
      timeIn: timeIn,
      timeOut: timeOut,
      isReported: isReported,
    );
