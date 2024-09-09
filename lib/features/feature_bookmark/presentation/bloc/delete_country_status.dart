import 'package:equatable/equatable.dart';

abstract class DeleteCountryStatus  extends Equatable{}

class DeleteCountryInitial extends DeleteCountryStatus {
  @override
  List<Object> get props => [];
}

class DeleteCountryLoading extends DeleteCountryStatus {
  @override
  List<Object> get props => [];
}

class DeleteCountrySuccess extends DeleteCountryStatus {
  final String country;
  DeleteCountrySuccess(this.country);
  @override
  List<Object> get props => [country];
}

class DeleteCountryError extends DeleteCountryStatus {
  @override
  List<Object> get props => [];
}
