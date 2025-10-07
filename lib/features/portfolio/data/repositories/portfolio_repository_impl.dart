import '../../../../core/network/dio_helper.dart';
import '../../../../core/resources/data_state.dart';
import '../../domain/entities/education_element.dart';
import '../../domain/entities/technology_skill_group.dart';
import '../../domain/entities/work_experience.dart';
import '../../domain/repositories/portfolio_repository.dart';
import '../data_sources/portfolio_data_source.dart';
import '../models/personal_info.dart';

class PortfolioRepositoryImpl implements PortfolioRepository {
  final PortfolioDataSource _portfolioDataSource;

  PortfolioRepositoryImpl(this._portfolioDataSource);

  @override
  Future<DataState<PersonalInfoModel>> getPersonalInfo() async {
    return safeApiCall(() => _portfolioDataSource.getPersonalInfo());
  }

  @override
  Future<DataState<List<TechnologySkillGroupEntity>>>
  getTechnologySkills() async {
    return safeApiCall(() => _portfolioDataSource.getTechnologySkills());
  }

  @override
  Future<DataState<List<WorkExperienceEntity>>> getWorkExperiences() async {
    return safeApiCall(() => _portfolioDataSource.getWorkExperiences());
  }

  @override
  Future<DataState<List<EducationElementEntity>>> getEducationElements() async {
    return safeApiCall(() => _portfolioDataSource.getEducationElements());
  }
}
