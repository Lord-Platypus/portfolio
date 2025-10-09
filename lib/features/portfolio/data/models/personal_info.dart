import '../../domain/entities/personal_info.dart';

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
    required super.email,
    required super.phone,
    required super.vatNumber,
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
      email: json['email'],
      phone: json['phone'],
      vatNumber: json['vatNumber'],
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
      'email': email,
      'phone': phone,
      'vatNumber': vatNumber,
      'aboutMe': aboutMe,
      'aboutLabels': aboutLabels,
    };
  }
}
