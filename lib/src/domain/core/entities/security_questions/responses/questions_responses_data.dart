import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'questions_responses_data.freezed.dart';
part 'questions_responses_data.g.dart';

@freezed
class QuestionsResponsesData with _$QuestionsResponsesData {
  factory QuestionsResponsesData({
    @JsonKey(name: 'recordSecurityQuestionResponses')
        required List<RecordSecurityQuestionResponse> responses,
  }) = _QuestionsResponsesData;

  factory QuestionsResponsesData.fromJson(Map<String, dynamic> json) =>
      _$QuestionsResponsesDataFromJson(json);
}
