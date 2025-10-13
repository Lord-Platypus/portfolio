import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/resources/data_state.dart';
import '../../domain/entities/education_element.dart';
import '../../domain/entities/personal_info.dart';
import '../../domain/entities/technology_skill_group.dart';
import '../../domain/entities/work_experience.dart';
import '../../domain/usecases/get_education_elements.dart';
import '../../domain/usecases/get_personal_info.dart';
import '../../domain/usecases/get_technology_skills.dart';
import '../../domain/usecases/get_work_experiences.dart';

part 'portfolio_state.dart';

class PortfolioCubit extends Cubit<PortfolioState> {
  final GetPersonalInfoUseCase _getPersonalInfoUserCase;
  final GetTechnologySkillsUseCase _getTechnologySkillsCase;
  final GetWorkExperiencesUseCase _getWorkExperiencesCase;
  final GetEducationElementsUseCase _getEducationElementsCase;

  PortfolioCubit({
    required GetPersonalInfoUseCase getPersonalInfoUserCase,
    required GetTechnologySkillsUseCase getTechnologySkillsCase,
    required GetWorkExperiencesUseCase getWorkExperiencesCase,
    required GetEducationElementsUseCase getEducationalElements,
  }) : _getPersonalInfoUserCase = getPersonalInfoUserCase,
       _getTechnologySkillsCase = getTechnologySkillsCase,
       _getWorkExperiencesCase = getWorkExperiencesCase,
       _getEducationElementsCase = getEducationalElements,
       super(PortfolioLoading());

  Future<void> getPortfolioInfos() async {
    final futures = [
      _getPersonalInfoUserCase.call(),
      _getTechnologySkillsCase.call(),
      _getWorkExperiencesCase.call(),
      _getEducationElementsCase.call(),
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
        workExperiences:
            (results[2] as DataSuccess<List<WorkExperienceEntity>>).data,
        educationElements:
            (results[3] as DataSuccess<List<EducationElementEntity>>).data,
      ),
    );
  }
}
