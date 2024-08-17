
import 'package:flutter/material.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/domain/entities/countries_entity.dart';

@immutable
abstract class CountryStatus {}


class CountryLoading extends CountryStatus {}
 
 class CountryCompeleted extends CountryStatus {
  final CountriesModelEntity country;
  CountryCompeleted(this.country);
 }

 class CountryError extends CountryStatus {
  final String message;
  CountryError(this.message);
 }