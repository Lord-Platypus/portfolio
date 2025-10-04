import 'package:equatable/equatable.dart';
import 'package:portfolio/features/portfolio/domain/entities/technology_skill.dart';

abstract class TechnologySkillGroupEntity extends Equatable {
  final String groupName;
  final List<TechnologySkillEntity> skills;

  const TechnologySkillGroupEntity({
    required this.groupName,
    required this.skills,
  });

  @override
  List<Object?> get props => [groupName, skills];
}
