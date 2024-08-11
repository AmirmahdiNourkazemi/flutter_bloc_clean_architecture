import 'package:equatable/equatable.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/models/countries_model/capital_info.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/models/countries_model/car.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/models/countries_model/coat_of_arms.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/models/countries_model/currencies.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/models/countries_model/demonyms.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/models/countries_model/flags.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/models/countries_model/idd.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/models/countries_model/languages.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/models/countries_model/maps.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/models/countries_model/name.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/models/countries_model/translations.dart';

class CountriesModelEntity extends Equatable {
  final Name? name;
  final List<String>? tld;
  final String? cca2;
  final String? ccn3;
  final String? cca3;
  final bool? independent;
  final String? status;
  final bool? unMember;
  final Currencies? currencies;
  final Idd? idd;
  final List<String>? capital;
  final List<String>? altSpellings;
  final String? region;
  final Languages? languages;
  final Translations? translations;
  final List<num>? latlng;
  final bool? landlocked;
  final int? area;
  final Demonyms? demonyms;
  final String? flag;
  final Maps? maps;
  final int? population;
  final Car? car;
  final List<String>? timezones;
  final List<String>? continents;
  final Flags? flags;
  final CoatOfArms? coatOfArms;
  final String? startOfWeek;
  final CapitalInfo? capitalInfo;

  const CountriesModelEntity({this.name,
    this.tld,
    this.cca2,
    this.ccn3,
    this.cca3,
    this.independent,
    this.status,
    this.unMember,
    this.currencies,
    this.idd,
    this.capital,
    this.altSpellings,
    this.region,
    this.languages,
    this.translations,
    this.latlng,
    this.landlocked,
    this.area,
    this.demonyms,
    this.flag,
    this.maps,
    this.population,
    this.car,
    this.timezones,
    this.continents,
    this.flags,
    this.coatOfArms,
    this.startOfWeek,
    this.capitalInfo,}
    
  );

  @override
  // TODO: implement props
  List<Object?> get props => [];
}
