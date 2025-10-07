import '../../../../core/resources/data_state.dart';
import '../entities/personal_info.dart';
import '../entities/technology_skill_group.dart';
import '../entities/work_experience.dart';

abstract class PortfolioRepository {
  Future<DataState<PersonalInfoEntity>> getPersonalInfo();

  Future<DataState<List<TechnologySkillGroupEntity>>> getTechnologySkills();

  Future<DataState<List<WorkExperienceEntity>>> getWorkExperiences();
}