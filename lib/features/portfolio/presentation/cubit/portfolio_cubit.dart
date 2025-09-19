import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:portfolio/core/resources/data_state.dart';
import 'package:portfolio/features/portfolio/domain/entities/personal_info.dart';
import 'package:portfolio/features/portfolio/domain/usecases/get_personal_info.dart';

part 'portfolio_state.dart';

class PortfolioCubit extends Cubit<PortfolioState> {
  final GetPersonalInfoUserCase _getPersonalInfoUserCase;

  PortfolioCubit({required GetPersonalInfoUserCase getPersonalInfoUserCase})
    : _getPersonalInfoUserCase = getPersonalInfoUserCase,
      super(PortfolioLoading());

  Future<void> getPortfolioInfos() async {
    final result = await _getPersonalInfoUserCase.call();

    if (result is DataSuccess && result.data != null) {
      emit(PortfolioDone(personalInfo: result.data));
    } else if (result is DataFailed) {
      emit(PortfolioError(exception: result.exception!));
    }
  }
}
