import 'package:dio/dio.dart';

import '../models/personal_info.dart';
import '../models/technology_skill_group.dart';

abstract class PortfolioDataSource {
  Future<Response<PersonalInfoModel>> getPersonalInfo();

  Future<Response<List<TechnologySkillGroupModel>>> getTechnologySkills();
}
