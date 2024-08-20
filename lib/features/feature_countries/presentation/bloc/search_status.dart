
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/domain/entities/countries_entity.dart';

@immutable
abstract class SearchStatus extends Equatable{}


class SearchLoading extends SearchStatus {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
 
class SearchInitLoading extends SearchStatus {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

 class SearchCompeleted extends SearchStatus {
  final List<CountriesModelEntity> country;
  SearchCompeleted(this.country);
  
  @override
  // TODO: implement props
  List<Object?> get props => [country];
 }

 class SearchError extends SearchStatus {
  final String message;
  SearchError(this.message);
  
  @override
  // TODO: implement props
  List<Object?> get props => [message];
 }