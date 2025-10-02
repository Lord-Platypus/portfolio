import 'package:portfolio/features/portfolio/domain/entities/personal_info.dart';

import 'language_skill.dart';

class PersonalInfoModel extends PersonalInfoEntity {
  const PersonalInfoModel({
    required super.name,
    required super.surname,
    required super.title,
    required super.profileImageUrl,
    required super.address,
    required super.city,
    required super.country,
    required super.postalCode,
    required super.birthDate,
    required super.educationalQualification,
    required super.languageSkills,
    required super.email,
    required super.phone,
    required super.aboutMe,
    required super.aboutLabels,
  });

  factory PersonalInfoModel.fromJson(Map<String, dynamic> json) {
    return PersonalInfoModel(
      name: json['name'],
      surname: json['surname'],
      title: json['title'],
      profileImageUrl: json['profileImageUrl'],
      address: json['address'],
      city: json['city'],
      country: json['country'],
      postalCode: json['postalCode'],
      birthDate: DateTime.parse(json['birthDate']),
      educationalQualification: json['educationalQualification'],
      languageSkills: (json['languageSkills'] as List)
          .map((e) => LanguageSkillModel.fromJson(e))
          .toList(),
      email: json['email'],
      phone: json['phone'],
      aboutMe: json['aboutMe'],
      aboutLabels: List<String>.from(json['aboutLabels']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'surname': surname,
      'title': title,
      'profileImageUrl': profileImageUrl,
      'address': address,
      'city': city,
      'country': country,
      'postalCode': postalCode,
      'birthDate': birthDate.toIso8601String(),
      'educationalQualification': educationalQualification,
      'languageSkills': languageSkills
          .map((e) => (e as LanguageSkillModel).toJson())
          .toList(),
      'email': email,
      'phone': phone,
      'aboutMe': aboutMe,
      'aboutLabels': aboutLabels,
    };
  }
}
