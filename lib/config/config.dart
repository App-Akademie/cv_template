import 'package:cv_template/domain/education_entry.dart';
import 'package:cv_template/domain/language_entry.dart';
import 'package:cv_template/domain/personal_data.dart';
import 'package:cv_template/domain/skill_entry.dart';
import 'package:cv_template/domain/work_entry.dart';

final List<dynamic> personEntries = [
  "Education",
  ...edus,
  "Skills",
  ...skills,
  "Languages",
  ...languages,
];

final List<dynamic> workEntries = [
  "Work Experience",
  ...work,
];

final edus = [
  EducationEntry(
    fromDate: DateTime(2014, 9),
    toDate: DateTime(2018, 7),
    degree: "Bachelor of Science",
    university: "University of Berlin",
  ),
  EducationEntry(
    fromDate: DateTime(2018, 9),
    toDate: DateTime(2020, 7),
    degree: "Master of Science",
    university: "University of Berlin",
  ),
  EducationEntry(
    fromDate: DateTime(2018, 9),
    toDate: DateTime(2020, 7),
    degree: "PhD",
    university: "University of Berlin",
  ),
];

final languages = [
  const LanguageEntry(
    name: "English",
    skillLevel: "C2",
    rating: 5,
  ),
  const LanguageEntry(
    name: "German",
    skillLevel: "C2",
    rating: 5,
  ),
  const LanguageEntry(
    name: "Spanish",
    skillLevel: "B2",
    rating: 4,
  ),
];

final skills = [
  const SkillEntry(
    name: "Flart",
    rating: 5,
    imgPath: "assets/svg/flutter.svg",
  ),
  const SkillEntry(
    name: "Dotlin",
    rating: 5,
    imgPath: "assets/svg/kotlin.svg",
  ),
  const SkillEntry(
    name: "Dython",
    rating: 3,
    imgPath: "assets/svg/python.svg",
  ),
];

final work = [
  WorkEntry(
    fromDate: DateTime(2014, 9),
    toDate: DateTime(2018, 7),
    jobTitle: "Software Engineer",
    company: "IBM",
    description:
        "Pioneered the development of the company's first-ever space tourism packages, including lunar landings, Martian treks, and zero-gravity experiences.",
  ),
  WorkEntry(
    fromDate: DateTime(2010, 9),
    toDate: DateTime(2014, 7),
    jobTitle: "Working Student",
    company: "App Akademie",
    description: "perated a variety of delivery vehicles, including vans.",
  ),
  WorkEntry(
      fromDate: DateTime(2005, 2),
      toDate: DateTime(2007, 9),
      jobTitle: "Logistic Driver",
      company: "DHL",
      description:
          "Operated a variety of delivery vehicles, including vans, trucks, and motorcycles, to deliver packages to customers in a timely and efficient manner.")
];

final personalData = PersonalData(
  firstName: "Jan",
  lastName: "Sent",
  email: "sentd94@gmail.com",
  phone: "+49 1575 911 9123",
  dateOfBirth: DateTime(1994, 12, 25),
  address: Address(
    street: "Karl-Marx-Str. 1",
    city: "Berlin",
    zip: "12043",
  ),
  profileDescription:
      "A versatile and dedicated professional with a diverse range of experience in logistics, app development education and app development. ",
  maritalStatus: MaritalStatus.single,
  nationality: Nationality.german,
);
