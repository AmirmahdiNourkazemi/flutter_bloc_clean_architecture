import 'package:flutter_bloc_clean_architecture/core/resources/data_state.dart';
import 'package:flutter_bloc_clean_architecture/core/usecase/use_case.dart';

import '../entities/country_entity.dart';

abstract class BookmarkRepository {
  Future<DataState<List<Country>>> getCountriesFromDB();
  Future<DataState<Country?>> findCountryByName(String name);
  Future<DataState<Country>> insertCountry(InsertCountry insertCountry);
  Future<DataState<String>> deleteCountry(String country);
}
