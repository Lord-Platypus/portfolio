import '../../../../core/resources/data_state.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/work_experience.dart';
import '../repositories/portfolio_repository.dart';

class GetWorkExperiencesCase
    implements UseCase<DataState<List<WorkExperienceEntity>>, void> {
  final PortfolioRepository _portfolioRepository;

  GetWorkExperiencesCase(this._portfolioRepository);

  @override
  Future<DataState<List<WorkExperienceEntity>>> call({void params}) {
    return _portfolioRepository.getWorkExperiences();
  }
}
