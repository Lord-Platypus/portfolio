import 'package:portfolio/features/portfolio/data/models/technology_skill.dart';
import 'package:portfolio/features/portfolio/domain/entities/technology_skill_group.dart';

class TechnologySkillGroupModel extends TechnologySkillGroupEntity {
  const TechnologySkillGroupModel({
    required super.groupName,
    required super.skills,
  });

  factory TechnologySkillGroupModel.fromJson(Map<String, dynamic> json) {
    return TechnologySkillGroupModel(
      groupName: json['groupName'],
      skills: (json['skills'] as List)
          .map((e) => TechnologySkillModel.fromJson(e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'groupName': groupName,
      'skills': skills
          .map((e) => (e as TechnologySkillModel).toJson())
          .toList(),
    };
  }
}
