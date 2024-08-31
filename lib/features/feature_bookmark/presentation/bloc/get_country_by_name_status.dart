import 'package:equatable/equatable.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_bookmark/domain/entities/country_entity.dart';

abstract class GetCountryByNameStatus  extends Equatable{}

class GetCountryByNameInitial extends GetCountryByNameStatus {
  @override
  List<Object> get props => [];
}

class GetCountryByNameLoading extends GetCountryByNameStatus {
  @override
  List<Object> get props => [];
}

class GetCountryByNameSuccess extends GetCountryByNameStatus { 

  final Country? country;
  GetCountryByNameSuccess(this.country);
  @override
  List<Object> get props => [];
}

class GetCountryByNameError extends GetCountryByNameStatus {
  @override
    List<Object> get props => [];
}
