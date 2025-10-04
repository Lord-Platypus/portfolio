import 'package:portfolio/core/resources/data_state.dart';
import 'package:portfolio/features/portfolio/domain/entities/technology_skill_group.dart';

import '../entities/personal_info.dart';

abstract class PortfolioRepository{
  Future<DataState<PersonalInfoEntity>> getPersonalInfo();

  Future<DataState<List<TechnologySkillGroupEntity>>> getTechnologySkills();
}