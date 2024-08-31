import 'package:equatable/equatable.dart';

import '../../domain/entities/country_entity.dart';

abstract class GetCountryStatus  extends Equatable{}

class GetCountryInitial extends GetCountryStatus {
  @override
  List<Object> get props => [];
}

class GetCountryLoading extends GetCountryStatus {
  @override
  List<Object> get props => [];
}

class GetCountrySuccess extends GetCountryStatus {
  final Country country;
  GetCountrySuccess(this.country);
  @override
  List<Object> get props => [country];
}

class GetCountryError extends GetCountryStatus {
  @override
  List<Object> get props => [];
}