// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    String? jwt,
    String? refreshToken,
  })  : _jwt = jwt,
        _refreshToken = refreshToken;

  // "jwt" field.
  String? _jwt;
  String get jwt => _jwt ?? '';
  set jwt(String? val) => _jwt = val;

  bool hasJwt() => _jwt != null;

  // "refreshToken" field.
  String? _refreshToken;
  String get refreshToken => _refreshToken ?? '';
  set refreshToken(String? val) => _refreshToken = val;

  bool hasRefreshToken() => _refreshToken != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        jwt: data['jwt'] as String?,
        refreshToken: data['refreshToken'] as String?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'jwt': _jwt,
        'refreshToken': _refreshToken,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'jwt': serializeParam(
          _jwt,
          ParamType.String,
        ),
        'refreshToken': serializeParam(
          _refreshToken,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        jwt: deserializeParam(
          data['jwt'],
          ParamType.String,
          false,
        ),
        refreshToken: deserializeParam(
          data['refreshToken'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        jwt == other.jwt &&
        refreshToken == other.refreshToken;
  }

  @override
  int get hashCode => const ListEquality().hash([jwt, refreshToken]);
}

UserStruct createUserStruct({
  String? jwt,
  String? refreshToken,
}) =>
    UserStruct(
      jwt: jwt,
      refreshToken: refreshToken,
    );
