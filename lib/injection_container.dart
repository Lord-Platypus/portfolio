import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'features/portfolio/data/data_sources/portfolio_data_source.dart';
import 'features/portfolio/data/data_sources/portfolio_local_service.dart';
import 'features/portfolio/data/repositories/portfolio_repository_impl.dart';
import 'features/portfolio/domain/repositories/portfolio_repository.dart';
import 'features/portfolio/domain/usecases/get_education_elements.dart';
import 'features/portfolio/domain/usecases/get_personal_info.dart';
import 'features/portfolio/domain/usecases/get_technology_skills.dart';
import 'features/portfolio/domain/usecases/get_work_experiences.dart';

final sl = GetIt.instance;

Future<void> initializeDependency() async {
  // External
  sl.registerSingleton<Dio>(Dio());

  // Data sources
  sl.registerSingleton<PortfolioDataSource>(PortfolioLocalService());

  // Repository
  sl.registerSingleton<PortfolioRepository>(PortfolioRepositoryImpl(sl()));

  // Use Cases
  sl.registerSingleton<GetPersonalInfoUseCase>(GetPersonalInfoUseCase(sl()));
  sl.registerSingleton<GetTechnologySkillsUseCase>(
      GetTechnologySkillsUseCase(sl()));
  sl.registerSingleton<GetWorkExperiencesUseCase>(
      GetWorkExperiencesUseCase(sl()));
  sl.registerSingleton<GetEducationElementsUseCase>(
      GetEducationElementsUseCase(sl()));
}
