// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PropertyStruct extends BaseStruct {
  PropertyStruct({
    String? country,
    String? state,
    String? city,
    String? street1,
    String? street2,
    String? zipcode,
  })  : _country = country,
        _state = state,
        _city = city,
        _street1 = street1,
        _street2 = street2,
        _zipcode = zipcode;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  set country(String? val) => _country = val;

  bool hasCountry() => _country != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  set state(String? val) => _state = val;

  bool hasState() => _state != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;

  bool hasCity() => _city != null;

  // "street1" field.
  String? _street1;
  String get street1 => _street1 ?? '';
  set street1(String? val) => _street1 = val;

  bool hasStreet1() => _street1 != null;

  // "street2" field.
  String? _street2;
  String get street2 => _street2 ?? '';
  set street2(String? val) => _street2 = val;

  bool hasStreet2() => _street2 != null;

  // "zipcode" field.
  String? _zipcode;
  String get zipcode => _zipcode ?? '';
  set zipcode(String? val) => _zipcode = val;

  bool hasZipcode() => _zipcode != null;

  static PropertyStruct fromMap(Map<String, dynamic> data) => PropertyStruct(
        country: data['country'] as String?,
        state: data['state'] as String?,
        city: data['city'] as String?,
        street1: data['street1'] as String?,
        street2: data['street2'] as String?,
        zipcode: data['zipcode'] as String?,
      );

  static PropertyStruct? maybeFromMap(dynamic data) =>
      data is Map ? PropertyStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'country': _country,
        'state': _state,
        'city': _city,
        'street1': _street1,
        'street2': _street2,
        'zipcode': _zipcode,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'country': serializeParam(
          _country,
          ParamType.String,
        ),
        'state': serializeParam(
          _state,
          ParamType.String,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
        'street1': serializeParam(
          _street1,
          ParamType.String,
        ),
        'street2': serializeParam(
          _street2,
          ParamType.String,
        ),
        'zipcode': serializeParam(
          _zipcode,
          ParamType.String,
        ),
      }.withoutNulls;

  static PropertyStruct fromSerializableMap(Map<String, dynamic> data) =>
      PropertyStruct(
        country: deserializeParam(
          data['country'],
          ParamType.String,
          false,
        ),
        state: deserializeParam(
          data['state'],
          ParamType.String,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
        street1: deserializeParam(
          data['street1'],
          ParamType.String,
          false,
        ),
        street2: deserializeParam(
          data['street2'],
          ParamType.String,
          false,
        ),
        zipcode: deserializeParam(
          data['zipcode'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PropertyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PropertyStruct &&
        country == other.country &&
        state == other.state &&
        city == other.city &&
        street1 == other.street1 &&
        street2 == other.street2 &&
        zipcode == other.zipcode;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([country, state, city, street1, street2, zipcode]);
}

PropertyStruct createPropertyStruct({
  String? country,
  String? state,
  String? city,
  String? street1,
  String? street2,
  String? zipcode,
}) =>
    PropertyStruct(
      country: country,
      state: state,
      city: city,
      street1: street1,
      street2: street2,
      zipcode: zipcode,
    );
