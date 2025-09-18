import 'dart:io';

import 'package:dio/dio.dart';
import 'package:portfolio/core/resources/data_state.dart';
import 'package:portfolio/features/portfolio/data/data_sources/portfolio_data_source.dart';
import 'package:portfolio/features/portfolio/domain/repositories/portfolio_repository.dart';

import '../models/personal_info.dart';

class PortfolioRepositoryImpl implements PortfolioRepository {
  final PortfolioDataSource _portfolioDataSource;

  PortfolioRepositoryImpl(this._portfolioDataSource);

  @override
  Future<DataState<PersonalInfoModel>> getPersonalInfo() async {
    try {
      final response = await _portfolioDataSource.getPersonalInfo();

      if (response.statusCode == HttpStatus.ok) {
        if (response.data != null) {
          return DataSuccess(response.data!);
        } else {
          return DataFailed(
            DioException(
              error: response.statusMessage,
              response: response,
              type: DioExceptionType.badResponse,
              requestOptions: response.requestOptions,
            ),
          );
        }
      }
      return DataFailed(
        DioException(
          error: response.statusMessage,
          response: response,
          type: DioExceptionType.badResponse,
          requestOptions: response.requestOptions,
        ),
      );
    } on DioException catch (e) {
      return DataFailed(e);
    } catch (e) {
      return DataFailed(
        DioException(
          error: e.toString(),
          requestOptions: RequestOptions(path: ''),
          type: DioExceptionType.unknown,
        ),
      );
    }
  }
}
