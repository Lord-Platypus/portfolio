import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:portfolio/features/portfolio/data/data_sources/portfolio_data_source.dart';
import 'package:portfolio/features/portfolio/data/data_sources/portfolio_local_service.dart';

final sl = GetIt.instance;

Future<void> initializeDependency() async {
 sl.registerSingleton<Dio>(Dio());

 sl.registerSingleton<PortfolioDataSource>(PortfolioLocalService());
}