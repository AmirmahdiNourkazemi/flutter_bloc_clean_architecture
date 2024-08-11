import 'package:flutter_bloc_clean_architecture/core/resources/data_state.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/domain/entities/countries_entity.dart';

abstract class CountryRepository {
  Future<DataState<CountriesModelEntity>> getCountries();
}