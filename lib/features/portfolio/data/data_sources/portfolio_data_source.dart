import 'package:dio/dio.dart';

import '../models/personal_info.dart';

abstract class PortfolioDataSource {
  Future<Response<PersonalInfoModel>> getPersonalInfo();
}
