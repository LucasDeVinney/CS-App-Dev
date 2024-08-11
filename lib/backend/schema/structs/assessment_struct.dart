// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AssessmentStruct extends BaseStruct {
  AssessmentStruct({
    String? id,
    String? message,
    String? status,
    String? firstName,
    String? lastName,
    String? phone,
    PropertyStruct? property,
  })  : _id = id,
        _message = message,
        _status = status,
        _firstName = firstName,
        _lastName = lastName,
        _phone = phone,
        _property = property;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

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

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;

  bool hasPhone() => _phone != null;

  // "property" field.
  PropertyStruct? _property;
  PropertyStruct get property => _property ?? PropertyStruct();
  set property(PropertyStruct? val) => _property = val;

  void updateProperty(Function(PropertyStruct) updateFn) {
    updateFn(_property ??= PropertyStruct());
  }

  bool hasProperty() => _property != null;

  static AssessmentStruct fromMap(Map<String, dynamic> data) =>
      AssessmentStruct(
        id: data['id'] as String?,
        message: data['message'] as String?,
        status: data['status'] as String?,
        firstName: data['firstName'] as String?,
        lastName: data['lastName'] as String?,
        phone: data['phone'] as String?,
        property: PropertyStruct.maybeFromMap(data['property']),
      );

  static AssessmentStruct? maybeFromMap(dynamic data) => data is Map
      ? AssessmentStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'message': _message,
        'status': _status,
        'firstName': _firstName,
        'lastName': _lastName,
        'phone': _phone,
        'property': _property?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
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
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'property': serializeParam(
          _property,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static AssessmentStruct fromSerializableMap(Map<String, dynamic> data) =>
      AssessmentStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
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
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        property: deserializeStructParam(
          data['property'],
          ParamType.DataStruct,
          false,
          structBuilder: PropertyStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'AssessmentStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AssessmentStruct &&
        id == other.id &&
        message == other.message &&
        status == other.status &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        phone == other.phone &&
        property == other.property;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, message, status, firstName, lastName, phone, property]);
}

AssessmentStruct createAssessmentStruct({
  String? id,
  String? message,
  String? status,
  String? firstName,
  String? lastName,
  String? phone,
  PropertyStruct? property,
}) =>
    AssessmentStruct(
      id: id,
      message: message,
      status: status,
      firstName: firstName,
      lastName: lastName,
      phone: phone,
      property: property ?? PropertyStruct(),
    );
