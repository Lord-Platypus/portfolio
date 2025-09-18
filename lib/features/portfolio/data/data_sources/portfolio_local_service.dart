import 'package:dio/dio.dart';
import 'package:portfolio/features/portfolio/data/data_sources/portfolio_data_source.dart';
import 'package:portfolio/features/portfolio/data/models/language_skill.dart';
import 'package:portfolio/features/portfolio/data/models/personal_info.dart';

class PortfolioLocalService implements PortfolioDataSource {
  @override
  Future<Response<PersonalInfoModel>> getPersonalInfo() async {
    return Response(
      data: PersonalInfoModel(
        name: "Emanuele",
        surname: "Vinci",
        title: "Senior Flutter Developer",
        profileImageUrl: "https://example.com/profile.jpg",
        // metti un placeholder o un tuo link reale
        address: "Loc. Campara 23",
        city: "Pastrengo",
        country: "Italy",
        postalCode: "37010",
        birthDate: DateTime(1993, 4, 28),
        educationalQualification: "Diploma di Liceo Scientifico Tecnologico",
        languageSkills: [
          LanguageSkillModel(language: "Italian", proficiency: "Native"),
          LanguageSkillModel(language: "English", proficiency: "B2/C1"),
        ],
        email: "emanuele.vinci.dev@gmail.com",
        phone: "+39 334 1089441",
        aboutMe:
            "Sono uno sviluppatore freelancer, offro servizi di consulenza informatica e creo app native e web con Flutter, mantenendomi in costante aggiornamento sulle novità e sui trend del mercato.",
      ),
      requestOptions: RequestOptions(path: ''),
    );
  }
}
