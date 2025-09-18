import 'package:portfolio/core/resources/data_state.dart';

import '../entities/personal_info.dart';

abstract class PortfolioRepository{
  Future<DataState<PersonalInfoEntity>> getPersonalInfo();
}