import 'package:equatable/equatable.dart';

import '../enums/skill_level_enum.dart';

abstract class TechnologySkillEntity extends Equatable {
  final String name;
  final SkillLevelEnum level;

  const TechnologySkillEntity({required this.name, required this.level});

  @override
  List<Object?> get props => [name, level];
}
