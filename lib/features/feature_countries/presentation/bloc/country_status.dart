
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/domain/entities/countries_entity.dart';

@immutable
abstract class CountryStatus extends Equatable{}


class CountryLoading extends CountryStatus {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
 
 class CountryCompeleted extends CountryStatus {
  final List<CountriesModelEntity> country;
  CountryCompeleted(this.country);
  
  @override
  // TODO: implement props
  List<Object?> get props => [country];
 }

 class CountryError extends CountryStatus {
  final String message;
  CountryError(this.message);
  
  @override
  // TODO: implement props
  List<Object?> get props => [message];
 }