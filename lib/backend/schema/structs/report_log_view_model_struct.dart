// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReportLogViewModelStruct extends BaseStruct {
  ReportLogViewModelStruct({
    int? reportId,
    String? name,
    String? roomName,
    String? userName,
    String? title,
    String? description,
    String? dateCreated,
    String? itemName,
    int? reportTypeId,
    bool? isNoisy,
    bool? isCussing,
    bool? isEating,
    bool? isUntidy,
    bool? isDamaged,
    bool? isNotWorking,
    bool? isResolved,
    int? action,
    int? studentId,
    int? roomId,
    int? userId,
    String? idNumber,
  })  : _reportId = reportId,
        _name = name,
        _roomName = roomName,
        _userName = userName,
        _title = title,
        _description = description,
        _dateCreated = dateCreated,
        _itemName = itemName,
        _reportTypeId = reportTypeId,
        _isNoisy = isNoisy,
        _isCussing = isCussing,
        _isEating = isEating,
        _isUntidy = isUntidy,
        _isDamaged = isDamaged,
        _isNotWorking = isNotWorking,
        _isResolved = isResolved,
        _action = action,
        _studentId = studentId,
        _roomId = roomId,
        _userId = userId,
        _idNumber = idNumber;

  // "reportId" field.
  int? _reportId;
  int get reportId => _reportId ?? 0;
  set reportId(int? val) => _reportId = val;

  void incrementReportId(int amount) => reportId = reportId + amount;

  bool hasReportId() => _reportId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "roomName" field.
  String? _roomName;
  String get roomName => _roomName ?? '';
  set roomName(String? val) => _roomName = val;

  bool hasRoomName() => _roomName != null;

  // "userName" field.
  String? _userName;
  String get userName => _userName ?? '';
  set userName(String? val) => _userName = val;

  bool hasUserName() => _userName != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "dateCreated" field.
  String? _dateCreated;
  String get dateCreated => _dateCreated ?? '';
  set dateCreated(String? val) => _dateCreated = val;

  bool hasDateCreated() => _dateCreated != null;

  // "itemName" field.
  String? _itemName;
  String get itemName => _itemName ?? '';
  set itemName(String? val) => _itemName = val;

  bool hasItemName() => _itemName != null;

  // "reportTypeId" field.
  int? _reportTypeId;
  int get reportTypeId => _reportTypeId ?? 0;
  set reportTypeId(int? val) => _reportTypeId = val;

  void incrementReportTypeId(int amount) =>
      reportTypeId = reportTypeId + amount;

  bool hasReportTypeId() => _reportTypeId != null;

  // "isNoisy" field.
  bool? _isNoisy;
  bool get isNoisy => _isNoisy ?? false;
  set isNoisy(bool? val) => _isNoisy = val;

  bool hasIsNoisy() => _isNoisy != null;

  // "isCussing" field.
  bool? _isCussing;
  bool get isCussing => _isCussing ?? false;
  set isCussing(bool? val) => _isCussing = val;

  bool hasIsCussing() => _isCussing != null;

  // "isEating" field.
  bool? _isEating;
  bool get isEating => _isEating ?? false;
  set isEating(bool? val) => _isEating = val;

  bool hasIsEating() => _isEating != null;

  // "isUntidy" field.
  bool? _isUntidy;
  bool get isUntidy => _isUntidy ?? false;
  set isUntidy(bool? val) => _isUntidy = val;

  bool hasIsUntidy() => _isUntidy != null;

  // "isDamaged" field.
  bool? _isDamaged;
  bool get isDamaged => _isDamaged ?? false;
  set isDamaged(bool? val) => _isDamaged = val;

  bool hasIsDamaged() => _isDamaged != null;

  // "isNotWorking" field.
  bool? _isNotWorking;
  bool get isNotWorking => _isNotWorking ?? false;
  set isNotWorking(bool? val) => _isNotWorking = val;

  bool hasIsNotWorking() => _isNotWorking != null;

  // "isResolved" field.
  bool? _isResolved;
  bool get isResolved => _isResolved ?? false;
  set isResolved(bool? val) => _isResolved = val;

  bool hasIsResolved() => _isResolved != null;

  // "action" field.
  int? _action;
  int get action => _action ?? 0;
  set action(int? val) => _action = val;

  void incrementAction(int amount) => action = action + amount;

  bool hasAction() => _action != null;

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

  // "userId" field.
  int? _userId;
  int get userId => _userId ?? 0;
  set userId(int? val) => _userId = val;

  void incrementUserId(int amount) => userId = userId + amount;

  bool hasUserId() => _userId != null;

  // "idNumber" field.
  String? _idNumber;
  String get idNumber => _idNumber ?? '';
  set idNumber(String? val) => _idNumber = val;

  bool hasIdNumber() => _idNumber != null;

  static ReportLogViewModelStruct fromMap(Map<String, dynamic> data) =>
      ReportLogViewModelStruct(
        reportId: castToType<int>(data['reportId']),
        name: data['name'] as String?,
        roomName: data['roomName'] as String?,
        userName: data['userName'] as String?,
        title: data['title'] as String?,
        description: data['description'] as String?,
        dateCreated: data['dateCreated'] as String?,
        itemName: data['itemName'] as String?,
        reportTypeId: castToType<int>(data['reportTypeId']),
        isNoisy: data['isNoisy'] as bool?,
        isCussing: data['isCussing'] as bool?,
        isEating: data['isEating'] as bool?,
        isUntidy: data['isUntidy'] as bool?,
        isDamaged: data['isDamaged'] as bool?,
        isNotWorking: data['isNotWorking'] as bool?,
        isResolved: data['isResolved'] as bool?,
        action: castToType<int>(data['action']),
        studentId: castToType<int>(data['studentId']),
        roomId: castToType<int>(data['roomId']),
        userId: castToType<int>(data['userId']),
        idNumber: data['idNumber'] as String?,
      );

  static ReportLogViewModelStruct? maybeFromMap(dynamic data) => data is Map
      ? ReportLogViewModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'reportId': _reportId,
        'name': _name,
        'roomName': _roomName,
        'userName': _userName,
        'title': _title,
        'description': _description,
        'dateCreated': _dateCreated,
        'itemName': _itemName,
        'reportTypeId': _reportTypeId,
        'isNoisy': _isNoisy,
        'isCussing': _isCussing,
        'isEating': _isEating,
        'isUntidy': _isUntidy,
        'isDamaged': _isDamaged,
        'isNotWorking': _isNotWorking,
        'isResolved': _isResolved,
        'action': _action,
        'studentId': _studentId,
        'roomId': _roomId,
        'userId': _userId,
        'idNumber': _idNumber,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'reportId': serializeParam(
          _reportId,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'roomName': serializeParam(
          _roomName,
          ParamType.String,
        ),
        'userName': serializeParam(
          _userName,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'dateCreated': serializeParam(
          _dateCreated,
          ParamType.String,
        ),
        'itemName': serializeParam(
          _itemName,
          ParamType.String,
        ),
        'reportTypeId': serializeParam(
          _reportTypeId,
          ParamType.int,
        ),
        'isNoisy': serializeParam(
          _isNoisy,
          ParamType.bool,
        ),
        'isCussing': serializeParam(
          _isCussing,
          ParamType.bool,
        ),
        'isEating': serializeParam(
          _isEating,
          ParamType.bool,
        ),
        'isUntidy': serializeParam(
          _isUntidy,
          ParamType.bool,
        ),
        'isDamaged': serializeParam(
          _isDamaged,
          ParamType.bool,
        ),
        'isNotWorking': serializeParam(
          _isNotWorking,
          ParamType.bool,
        ),
        'isResolved': serializeParam(
          _isResolved,
          ParamType.bool,
        ),
        'action': serializeParam(
          _action,
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
        'userId': serializeParam(
          _userId,
          ParamType.int,
        ),
        'idNumber': serializeParam(
          _idNumber,
          ParamType.String,
        ),
      }.withoutNulls;

  static ReportLogViewModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ReportLogViewModelStruct(
        reportId: deserializeParam(
          data['reportId'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        roomName: deserializeParam(
          data['roomName'],
          ParamType.String,
          false,
        ),
        userName: deserializeParam(
          data['userName'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        dateCreated: deserializeParam(
          data['dateCreated'],
          ParamType.String,
          false,
        ),
        itemName: deserializeParam(
          data['itemName'],
          ParamType.String,
          false,
        ),
        reportTypeId: deserializeParam(
          data['reportTypeId'],
          ParamType.int,
          false,
        ),
        isNoisy: deserializeParam(
          data['isNoisy'],
          ParamType.bool,
          false,
        ),
        isCussing: deserializeParam(
          data['isCussing'],
          ParamType.bool,
          false,
        ),
        isEating: deserializeParam(
          data['isEating'],
          ParamType.bool,
          false,
        ),
        isUntidy: deserializeParam(
          data['isUntidy'],
          ParamType.bool,
          false,
        ),
        isDamaged: deserializeParam(
          data['isDamaged'],
          ParamType.bool,
          false,
        ),
        isNotWorking: deserializeParam(
          data['isNotWorking'],
          ParamType.bool,
          false,
        ),
        isResolved: deserializeParam(
          data['isResolved'],
          ParamType.bool,
          false,
        ),
        action: deserializeParam(
          data['action'],
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
        userId: deserializeParam(
          data['userId'],
          ParamType.int,
          false,
        ),
        idNumber: deserializeParam(
          data['idNumber'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ReportLogViewModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ReportLogViewModelStruct &&
        reportId == other.reportId &&
        name == other.name &&
        roomName == other.roomName &&
        userName == other.userName &&
        title == other.title &&
        description == other.description &&
        dateCreated == other.dateCreated &&
        itemName == other.itemName &&
        reportTypeId == other.reportTypeId &&
        isNoisy == other.isNoisy &&
        isCussing == other.isCussing &&
        isEating == other.isEating &&
        isUntidy == other.isUntidy &&
        isDamaged == other.isDamaged &&
        isNotWorking == other.isNotWorking &&
        isResolved == other.isResolved &&
        action == other.action &&
        studentId == other.studentId &&
        roomId == other.roomId &&
        userId == other.userId &&
        idNumber == other.idNumber;
  }

  @override
  int get hashCode => const ListEquality().hash([
        reportId,
        name,
        roomName,
        userName,
        title,
        description,
        dateCreated,
        itemName,
        reportTypeId,
        isNoisy,
        isCussing,
        isEating,
        isUntidy,
        isDamaged,
        isNotWorking,
        isResolved,
        action,
        studentId,
        roomId,
        userId,
        idNumber
      ]);
}

ReportLogViewModelStruct createReportLogViewModelStruct({
  int? reportId,
  String? name,
  String? roomName,
  String? userName,
  String? title,
  String? description,
  String? dateCreated,
  String? itemName,
  int? reportTypeId,
  bool? isNoisy,
  bool? isCussing,
  bool? isEating,
  bool? isUntidy,
  bool? isDamaged,
  bool? isNotWorking,
  bool? isResolved,
  int? action,
  int? studentId,
  int? roomId,
  int? userId,
  String? idNumber,
}) =>
    ReportLogViewModelStruct(
      reportId: reportId,
      name: name,
      roomName: roomName,
      userName: userName,
      title: title,
      description: description,
      dateCreated: dateCreated,
      itemName: itemName,
      reportTypeId: reportTypeId,
      isNoisy: isNoisy,
      isCussing: isCussing,
      isEating: isEating,
      isUntidy: isUntidy,
      isDamaged: isDamaged,
      isNotWorking: isNotWorking,
      isResolved: isResolved,
      action: action,
      studentId: studentId,
      roomId: roomId,
      userId: userId,
      idNumber: idNumber,
    );
