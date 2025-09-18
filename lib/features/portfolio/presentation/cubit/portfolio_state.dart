part of 'portfolio_cubit.dart';

sealed class PortfolioState extends Equatable {
  const PortfolioState({this.personalInfo, this.exception});
  final PersonalInfoEntity? personalInfo;
  final DioException? exception;

  @override
  List<Object> get props => [ personalInfo!, exception!];
}

final class PortfolioLoading extends PortfolioState {
}

final class PortfolioDone extends PortfolioState {
  const PortfolioDone({required super.personalInfo});
}

final class PortfolioError extends PortfolioState {
  const PortfolioError({required super.exception});
}