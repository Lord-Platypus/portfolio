import '../../domain/entities/technology_skill.dart';
import '../../domain/enums/skill_level_enum.dart';

class TechnologySkillModel extends TechnologySkillEntity {
  const TechnologySkillModel({required super.name, required super.level});

  factory TechnologySkillModel.fromJson(Map<String, dynamic> json) {
    return TechnologySkillModel(
      name: json['name'],
      level: SkillLevelEnum.values[json['level']],
    );
  }

  Map<String, dynamic> toJson() {
    return {'name': name, 'level': level.index};
  }
}
