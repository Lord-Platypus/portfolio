import '../../../../core/resources/data_state.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/personal_info.dart';
import '../repositories/portfolio_repository.dart';

class GetPersonalInfoUserCase
    implements UseCase<DataState<PersonalInfoEntity>, void> {
  final PortfolioRepository _portfolioRepository;

  GetPersonalInfoUserCase(this._portfolioRepository);

  @override
  Future<DataState<PersonalInfoEntity>> call({void params}) {
    return _portfolioRepository.getPersonalInfo();
  }
}
