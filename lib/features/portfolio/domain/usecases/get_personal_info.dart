import 'package:portfolio/core/resources/data_state.dart';
import 'package:portfolio/features/portfolio/domain/entities/personal_info.dart';
import 'package:portfolio/features/portfolio/domain/repositories/portfolio_repository.dart';

import '../../../../core/usecases/usecase.dart';

class GetPersonalInfoUserCase
    implements UseCase<DataState<PersonalInfoEntity>, void> {
  final PortfolioRepository _portfolioRepository;

  GetPersonalInfoUserCase(this._portfolioRepository);

  @override
  Future<DataState<PersonalInfoEntity>> call({void params}) {
    return _portfolioRepository.getPersonalInfo();
  }
}
