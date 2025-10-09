import 'package:equatable/equatable.dart';


class PersonalInfoEntity extends Equatable {
  final String name;
  final String surname;
  final String title;
  final String profileImageUrl;
  final String address;
  final String city;
  final String country;
  final String postalCode;
  final String email;
  final String phone;
  final String vatNumber;
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
    required this.email,
    required this.phone,
    required this.vatNumber,
    required this.aboutMe,
    required this.aboutLabels,
  });

  String get fullName => '$name $surname';

  String get fullAddress => '$address, $city, $postalCode, $country';

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
    email,
    phone,
    vatNumber,
    aboutMe,
    aboutLabels,
  ];
}
