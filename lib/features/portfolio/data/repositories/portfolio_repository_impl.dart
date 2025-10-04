import 'package:portfolio/core/network/dio_helper.dart';
import 'package:portfolio/core/resources/data_state.dart';
import 'package:portfolio/features/portfolio/data/data_sources/portfolio_data_source.dart';
import 'package:portfolio/features/portfolio/domain/entities/technology_skill_group.dart';
import 'package:portfolio/features/portfolio/domain/repositories/portfolio_repository.dart';

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
}
