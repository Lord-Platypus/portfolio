import '../../../../core/resources/data_state.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/education_element.dart';
import '../repositories/portfolio_repository.dart';

class GetEducationElementsUseCase
    implements UseCase<DataState<List<EducationElementEntity>>, void> {
  final PortfolioRepository _portfolioRepository;

  GetEducationElementsUseCase(this._portfolioRepository);

  @override
  Future<DataState<List<EducationElementEntity>>> call({void params}) {
    return _portfolioRepository.getEducationElements();
  }
}
