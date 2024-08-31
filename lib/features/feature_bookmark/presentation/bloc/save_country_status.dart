import 'package:equatable/equatable.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_bookmark/domain/entities/country_entity.dart';

abstract class SaveCountryStatus  extends Equatable{}

class SaveCountryInitial extends SaveCountryStatus {
  @override
  List<Object> get props => [];
}

class SaveCountryLoading extends SaveCountryStatus {
  @override
  List<Object> get props => [];
}

class SaveCountrySuccess extends SaveCountryStatus {
  final Country country;
  SaveCountrySuccess(this.country);
  @override
  List<Object> get props => [country];
}

class SaveCountryError extends SaveCountryStatus {
  @override
  List<Object> get props => [];
}