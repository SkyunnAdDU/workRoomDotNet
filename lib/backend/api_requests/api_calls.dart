import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetReportCall {
  static Future<ApiCallResponse> call({
    int? id,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getReport',
      apiUrl: 'https://ea4b-103-37-49-199.ngrok-free.app/Reports',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetDashboardDataCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getDashboardData',
      apiUrl: 'https://ea4b-103-37-49-199.ngrok-free.app/DashboardData',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetStudentReportsCall {
  static Future<ApiCallResponse> call({
    String? watchDate = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getStudentReports',
      apiUrl: 'https://bc11-103-37-49-199.ngrok-free.app/StudentReports',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'watchDate': watchDate,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetItemReportsCall {
  static Future<ApiCallResponse> call({
    String? watchDate = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getItemReports',
      apiUrl: 'https://bc11-103-37-49-199.ngrok-free.app/ItemReports',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'watchDate': watchDate,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetRoomLogsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getRoomLogs ',
      apiUrl: 'https://bc11-103-37-49-199.ngrok-free.app/Main_Log/1',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddStudentCall {
  static Future<ApiCallResponse> call({
    String? idNumber = '',
    String? firstName = '',
    String? lastName = '',
    String? course = '',
    String? gender = '',
    String? enrolledYear = '',
  }) async {
    final ffApiRequestBody = '''
{
  "studentId": 0,
  "idNumber": "${escapeStringForJson(idNumber)}",
  "firstName": "${escapeStringForJson(firstName)}",
  "lastName": "${escapeStringForJson(lastName)}",
  "course": "${escapeStringForJson(course)}",
  "gender": "${escapeStringForJson(gender)}",
  "enrolledYear": "${escapeStringForJson(enrolledYear)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addStudent',
      apiUrl: 'https://bc11-103-37-49-199.ngrok-free.app/AddStudent',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddReportCall {
  static Future<ApiCallResponse> call({
    String? idNumber = '',
    String? name = '',
    String? description = '',
    String? title = '',
    String? itemName = '',
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
  }) async {
    final ffApiRequestBody = '''
{
  "reportId": 0,
  "name": "${escapeStringForJson(name)}",
  "roomName": "string",
  "userName": "string",
  "idNumber": "${escapeStringForJson(idNumber)}",
  "studentId": $studentId,
  "roomId": 0,
  "userId": 0,
  "title": "${escapeStringForJson(title)}",
  "description": "${escapeStringForJson(description)}",
  "dateCreated": "string",
  "itemName": "string",
  "reportTypeId": $reportTypeId,
  "isNoisy": $isNoisy,
  "isCussing": $isCussing,
  "isEating": $isEating,
  "isUntidy": $isUntidy,
  "isDamaged": $isDamaged,
  "isNotWorking": $isNotWorking,
  "isResolved": $isResolved,
  "action": $action
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addReport',
      apiUrl: 'https://ea4b-103-37-49-199.ngrok-free.app/AddReport',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddLogCall {
  static Future<ApiCallResponse> call({
    String? idNumber = '',
  }) async {
    final ffApiRequestBody = '''
{
  "studentId": 0,
  "idNumber": "${escapeStringForJson(idNumber)}",
  "firstName": "string",
  "lastName": "string",
  "course": "string",
  "enrolledYear": "string"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addLog',
      apiUrl: 'https://bc11-103-37-49-199.ngrok-free.app/AddLog',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class VerifyStudentCall {
  static Future<ApiCallResponse> call({
    String? idNumber = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'verifyStudent',
      apiUrl: 'https://bc11-103-37-49-199.ngrok-free.app/VerifyStudent',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'IdNumber': idNumber,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateLogTimeOutCall {
  static Future<ApiCallResponse> call({
    int? logId,
  }) async {
    final ffApiRequestBody = '''
{
  "logId": $logId,
  "studentId": 0,
  "roomId": 0,
  "studentName": "string",
  "roomName": "string",
  "dateOfVisit": "string",
  "timeIn": "string",
  "timeOut": "string",
  "isReported": true
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateLogTimeOut',
      apiUrl: 'https://bc11-103-37-49-199.ngrok-free.app/UpdateLogTimeOut',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetLogInCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getLogIn',
      apiUrl: 'https://bc11-103-37-49-199.ngrok-free.app/LogIn',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetStudentCall {
  static Future<ApiCallResponse> call({
    int? id,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getStudent',
      apiUrl: 'https://bc11-103-37-49-199.ngrok-free.app/GetStudent',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetStudentsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getStudents',
      apiUrl: 'https://bc11-103-37-49-199.ngrok-free.app/Students',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
