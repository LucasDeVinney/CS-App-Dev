// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AllAssessmentsStruct extends BaseStruct {
  AllAssessmentsStruct({
    List<AssessmentStruct>? data,
  }) : _data = data;

  // "data" field.
  List<AssessmentStruct>? _data;
  List<AssessmentStruct> get data => _data ?? const [];
  set data(List<AssessmentStruct>? val) => _data = val;

  void updateData(Function(List<AssessmentStruct>) updateFn) {
    updateFn(_data ??= []);
  }

  bool hasData() => _data != null;

  static AllAssessmentsStruct fromMap(Map<String, dynamic> data) =>
      AllAssessmentsStruct(
        data: getStructList(
          data['data'],
          AssessmentStruct.fromMap,
        ),
      );

  static AllAssessmentsStruct? maybeFromMap(dynamic data) => data is Map
      ? AllAssessmentsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'data': _data?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'data': serializeParam(
          _data,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static AllAssessmentsStruct fromSerializableMap(Map<String, dynamic> data) =>
      AllAssessmentsStruct(
        data: deserializeStructParam<AssessmentStruct>(
          data['data'],
          ParamType.DataStruct,
          true,
          structBuilder: AssessmentStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'AllAssessmentsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is AllAssessmentsStruct &&
        listEquality.equals(data, other.data);
  }

  @override
  int get hashCode => const ListEquality().hash([data]);
}

AllAssessmentsStruct createAllAssessmentsStruct() => AllAssessmentsStruct();
