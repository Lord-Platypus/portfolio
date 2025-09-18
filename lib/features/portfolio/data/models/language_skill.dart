import '../../domain/entities/language_skill.dart';

class LanguageSkillModel extends LanguageSkillEntity {
  const LanguageSkillModel({
    required super.language,
    required super.proficiency,
  });

  factory LanguageSkillModel.fromJson(Map<String, dynamic> json) {
    return LanguageSkillModel(
        language: json['language'], proficiency: json['proficiency']);
  }

  Map<String, dynamic> toJson() {
    return {
      'language': language,
      'proficiency': proficiency,
    };
  }
}
