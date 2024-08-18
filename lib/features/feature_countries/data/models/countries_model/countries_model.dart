import 'package:flutter_bloc_clean_architecture/features/feature_countries/domain/entities/countries_entity.dart';

import 'capital_info.dart';
import 'car.dart';
import 'coat_of_arms.dart';
import 'currencies.dart';
import 'demonyms.dart';
import 'flags.dart';
import 'idd.dart';
import 'languages.dart';
import 'maps.dart';
import 'name.dart';
import 'translations.dart';

class CountriesModel extends CountriesModelEntity {
  CountriesModel({
    Name? name,
    List<dynamic>? tld,
    String? cca2,
    String? ccn3,
    String? cca3,
    bool? independent,
    String? status,
    bool? unMember,
    Currencies? currencies,
    Idd? idd,
    List<dynamic>? capital,
    List<dynamic>? altSpellings,
    String? region,
    Languages? languages,
    Translations? translations,
    List<dynamic>? latlng,
    bool? landlocked,
    num? area,
    Demonyms? demonyms,
    String? flag,
    Maps? maps,
    num? population,
    Car? car,
    List<dynamic>? timezones,
    List<dynamic>? continents,
    Flags? flags,
    CoatOfArms? coatOfArms,
    String? startOfWeek,
    CapitalInfo? capitalInfo,
  }) : super(
          name: name,
          tld: tld,
          cca2: cca2,
          cca3: cca3,
          ccn3: ccn3,
          independent: independent,
          status: status,
          unMember: unMember,
          currencies: currencies,
          idd: idd,
          capital: capital,
          altSpellings: altSpellings,
          region: region,
          languages: languages,
          translations: translations,
          latlng: latlng,
          landlocked: landlocked,
          area: area,
          demonyms: demonyms,
          flag: flag,
          maps: maps,
          population: population,
          car: car,
          timezones: timezones,
          continents: continents,
          flags: flags,
          coatOfArms: coatOfArms,
          startOfWeek: startOfWeek,
          capitalInfo: capitalInfo,
        );

  factory CountriesModel.fromJson(Map<String, dynamic> json) {
    return CountriesModel(
      name: json['name'] == null
          ? null
          : Name.fromJson(json['name'] as Map<String, dynamic>),
      tld: json['tld'] as List<dynamic>?,
      cca2: json['cca2'] as String?,
      ccn3: json['ccn3'] as String?,
      cca3: json['cca3'] as String?,
      independent: json['independent'] as bool?,
      status: json['status'] as String?,
      unMember: json['unMember'] as bool?,
      currencies: json['currencies'] == null
          ? null
          : Currencies.fromJson(json['currencies'] as Map<String, dynamic>),
      idd: json['idd'] == null
          ? null
          : Idd.fromJson(json['idd'] as Map<String, dynamic>),
      capital: json['capital'] as List<dynamic>?,
      altSpellings: json['altSpellings'] as List<dynamic>?,
      region: json['region'] as String?,
      languages: json['languages'] == null
          ? null
          : Languages.fromJson(json['languages'] as Map<String, dynamic>),
      translations: json['translations'] == null
          ? null
          : Translations.fromJson(json['translations'] as Map<String, dynamic>),
      latlng: json['latlng'] as List<dynamic>?,
      landlocked: json['landlocked'] as bool?,
      area: json['area'] as num?,
      demonyms: json['demonyms'] == null
          ? null
          : Demonyms.fromJson(json['demonyms'] as Map<String, dynamic>),
      flag: json['flag'] as String?,
      maps: json['maps'] == null
          ? null
          : Maps.fromJson(json['maps'] as Map<String, dynamic>),
      population: json['population'] as num?,
      car: json['car'] == null
          ? null
          : Car.fromJson(json['car'] as Map<String, dynamic>),
      timezones: json['timezones'] as List<dynamic>?,
      continents: json['continents'] as List<dynamic>?,
      flags: json['flags'] == null
          ? null
          : Flags.fromJson(json['flags'] as Map<String, dynamic>),
      // coatOfArms: json['coatOfArms'] == null
      //     ? null
      //     : CoatOfArms.fromJson(json['coatOfArms'] as Map<String, dynamic>),
      startOfWeek: json['startOfWeek'] as String?,
      capitalInfo: json['capitalInfo'] == null
          ? null
          : CapitalInfo.fromJson(json['capitalInfo'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
        'name': name?.toJson(),
        'tld': tld,
        'cca2': cca2,
        'ccn3': ccn3,
        'cca3': cca3,
        'independent': independent,
        'status': status,
        'unMember': unMember,
        'currencies': currencies?.toJson(),
        'idd': idd?.toJson(),
        'capital': capital,
        'altSpellings': altSpellings,
        'region': region,
        'languages': languages?.toJson(),
        'translations': translations?.toJson(),
        'latlng': latlng,
        'landlocked': landlocked,
        'area': area,
        'demonyms': demonyms?.toJson(),
        'flag': flag,
        'maps': maps?.toJson(),
        'population': population,
        'car': car?.toJson(),
        'timezones': timezones,
        'continents': continents,
        'flags': flags?.toJson(),
        'coatOfArms': coatOfArms?.toJson(),
        'startOfWeek': startOfWeek,
        'capitalInfo': capitalInfo?.toJson(),
      };
}
