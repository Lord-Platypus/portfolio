import 'package:portfolio/core/resources/data_state.dart';
import 'package:portfolio/features/portfolio/domain/repositories/portfolio_repository.dart';

import '../../../../core/usecases/usecase.dart';
import '../entities/technology_skill_group.dart';

class GetTechnologySkillsCase
    implements UseCase<DataState<List<TechnologySkillGroupEntity>>, void> {
  final PortfolioRepository _portfolioRepository;

  GetTechnologySkillsCase(this._portfolioRepository);

  @override
  Future<DataState<List<TechnologySkillGroupEntity>>> call({
    void params,
  }) async {
    final result = await _portfolioRepository.getTechnologySkills();

    if (result is DataFailed) {
      return result;
    }

    // order by skill level desc
    for (var group in result.data!) {
      group.skills.sort((a, b) => b.level.index.compareTo(a.level.index));
    }
    return result;
  }
}
