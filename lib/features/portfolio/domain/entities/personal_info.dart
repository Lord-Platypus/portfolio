import 'package:equatable/equatable.dart';
import 'package:portfolio/features/portfolio/domain/entities/language_skill.dart';

class PersonalInfoEntity extends Equatable {
  final String name;
  final String surname;
  final String title;
  final String profileImageUrl;
  final String address;
  final String city;
  final String country;
  final String postalCode;
  final DateTime birthDate;
  final String educationalQualification;
  final List<LanguageSkillEntity> languageSkills;
  final String email;
  final String phone;
  final String aboutMe;
  final List<String> aboutLabels;

  const PersonalInfoEntity({
    required this.name,
    required this.surname,
    required this.title,
    required this.profileImageUrl,
    required this.address,
    required this.city,
    required this.country,
    required this.postalCode,
    required this.birthDate,
    required this.educationalQualification,
    required this.languageSkills,
    required this.email,
    required this.phone,
    required this.aboutMe,
    required this.aboutLabels,
  });

  String get fullName => '$name $surname';

  @override
  List<Object?> get props => [
    name,
    surname,
    title,
    profileImageUrl,
    address,
    city,
    country,
    postalCode,
    birthDate,
    educationalQualification,
    languageSkills,
    email,
    phone,
    aboutMe,
  ];
}
