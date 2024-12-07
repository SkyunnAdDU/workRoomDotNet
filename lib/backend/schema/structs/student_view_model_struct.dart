// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StudentViewModelStruct extends BaseStruct {
  StudentViewModelStruct({
    int? studentId,
    String? idNumber,
    String? firstName,
    String? lastName,
    String? course,
    String? gender,
    String? enrolledYear,
  })  : _studentId = studentId,
        _idNumber = idNumber,
        _firstName = firstName,
        _lastName = lastName,
        _course = course,
        _gender = gender,
        _enrolledYear = enrolledYear;

  // "studentId" field.
  int? _studentId;
  int get studentId => _studentId ?? 0;
  set studentId(int? val) => _studentId = val;

  void incrementStudentId(int amount) => studentId = studentId + amount;

  bool hasStudentId() => _studentId != null;

  // "idNumber" field.
  String? _idNumber;
  String get idNumber => _idNumber ?? '';
  set idNumber(String? val) => _idNumber = val;

  bool hasIdNumber() => _idNumber != null;

  // "firstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  set firstName(String? val) => _firstName = val;

  bool hasFirstName() => _firstName != null;

  // "lastName" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  set lastName(String? val) => _lastName = val;

  bool hasLastName() => _lastName != null;

  // "course" field.
  String? _course;
  String get course => _course ?? '';
  set course(String? val) => _course = val;

  bool hasCourse() => _course != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  set gender(String? val) => _gender = val;

  bool hasGender() => _gender != null;

  // "enrolledYear" field.
  String? _enrolledYear;
  String get enrolledYear => _enrolledYear ?? '';
  set enrolledYear(String? val) => _enrolledYear = val;

  bool hasEnrolledYear() => _enrolledYear != null;

  static StudentViewModelStruct fromMap(Map<String, dynamic> data) =>
      StudentViewModelStruct(
        studentId: castToType<int>(data['studentId']),
        idNumber: data['idNumber'] as String?,
        firstName: data['firstName'] as String?,
        lastName: data['lastName'] as String?,
        course: data['course'] as String?,
        gender: data['gender'] as String?,
        enrolledYear: data['enrolledYear'] as String?,
      );

  static StudentViewModelStruct? maybeFromMap(dynamic data) => data is Map
      ? StudentViewModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'studentId': _studentId,
        'idNumber': _idNumber,
        'firstName': _firstName,
        'lastName': _lastName,
        'course': _course,
        'gender': _gender,
        'enrolledYear': _enrolledYear,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'studentId': serializeParam(
          _studentId,
          ParamType.int,
        ),
        'idNumber': serializeParam(
          _idNumber,
          ParamType.String,
        ),
        'firstName': serializeParam(
          _firstName,
          ParamType.String,
        ),
        'lastName': serializeParam(
          _lastName,
          ParamType.String,
        ),
        'course': serializeParam(
          _course,
          ParamType.String,
        ),
        'gender': serializeParam(
          _gender,
          ParamType.String,
        ),
        'enrolledYear': serializeParam(
          _enrolledYear,
          ParamType.String,
        ),
      }.withoutNulls;

  static StudentViewModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      StudentViewModelStruct(
        studentId: deserializeParam(
          data['studentId'],
          ParamType.int,
          false,
        ),
        idNumber: deserializeParam(
          data['idNumber'],
          ParamType.String,
          false,
        ),
        firstName: deserializeParam(
          data['firstName'],
          ParamType.String,
          false,
        ),
        lastName: deserializeParam(
          data['lastName'],
          ParamType.String,
          false,
        ),
        course: deserializeParam(
          data['course'],
          ParamType.String,
          false,
        ),
        gender: deserializeParam(
          data['gender'],
          ParamType.String,
          false,
        ),
        enrolledYear: deserializeParam(
          data['enrolledYear'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'StudentViewModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is StudentViewModelStruct &&
        studentId == other.studentId &&
        idNumber == other.idNumber &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        course == other.course &&
        gender == other.gender &&
        enrolledYear == other.enrolledYear;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [studentId, idNumber, firstName, lastName, course, gender, enrolledYear]);
}

StudentViewModelStruct createStudentViewModelStruct({
  int? studentId,
  String? idNumber,
  String? firstName,
  String? lastName,
  String? course,
  String? gender,
  String? enrolledYear,
}) =>
    StudentViewModelStruct(
      studentId: studentId,
      idNumber: idNumber,
      firstName: firstName,
      lastName: lastName,
      course: course,
      gender: gender,
      enrolledYear: enrolledYear,
    );
