import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:portfolio/core/resources/data_state.dart';
import 'package:portfolio/features/portfolio/domain/entities/personal_info.dart';
import 'package:portfolio/features/portfolio/domain/usecases/get_personal_info.dart';
import 'package:portfolio/features/portfolio/domain/usecases/get_technology_skills.dart';

import '../../domain/entities/technology_skill_group.dart';

part 'portfolio_state.dart';

class PortfolioCubit extends Cubit<PortfolioState> {
  final GetPersonalInfoUserCase _getPersonalInfoUserCase;
  final GetTechnologySkillsCase _getTechnologySkillsCase;

  PortfolioCubit({
    required GetPersonalInfoUserCase getPersonalInfoUserCase,
    required GetTechnologySkillsCase getTechnologySkillsCase,
  }) : _getPersonalInfoUserCase = getPersonalInfoUserCase,
       _getTechnologySkillsCase = getTechnologySkillsCase,
       super(PortfolioLoading());

  Future<void> getPortfolioInfos() async {
    final futures = [
      _getPersonalInfoUserCase.call(),
      _getTechnologySkillsCase.call(),
    ];

    final results = await Future.wait(futures);

    if (results.any((result) => result is DataFailed)) {
      final failedResult =
          results.firstWhere((result) => result is DataFailed) as DataFailed;
      emit(PortfolioError(exception: failedResult.exception!));
      return;
    }

    emit(
      PortfolioDone(
        personalInfo: (results[0] as DataSuccess<PersonalInfoEntity>).data,
        technologySkills:
            (results[1] as DataSuccess<List<TechnologySkillGroupEntity>>).data,
      ),
    );
  }
}
