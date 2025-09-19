import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:portfolio/features/portfolio/data/data_sources/portfolio_data_source.dart';
import 'package:portfolio/features/portfolio/data/data_sources/portfolio_local_service.dart';
import 'package:portfolio/features/portfolio/data/repositories/portfolio_repository_impl.dart';
import 'package:portfolio/features/portfolio/domain/usecases/get_personal_info.dart';

import 'features/portfolio/domain/repositories/portfolio_repository.dart';

final sl = GetIt.instance;

Future<void> initializeDependency() async {
  sl.registerSingleton<Dio>(Dio());

  sl.registerSingleton<PortfolioDataSource>(PortfolioLocalService());

  sl.registerSingleton<PortfolioRepository>(PortfolioRepositoryImpl(sl()));

  sl.registerSingleton<GetPersonalInfoUserCase>(GetPersonalInfoUserCase(sl()));
}
