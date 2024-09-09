import 'package:flutter_bloc_clean_architecture/core/usecase/use_case.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_bookmark/domain/repository/bookmark_repository.dart';

import '../../../../core/resources/data_state.dart';
import '../../domain/entities/country_entity.dart';
import '../data_source/local/country_dao.dart';

class BookmarkRepositoryImpl extends BookmarkRepository {
  final CountryDao countryDao;

  BookmarkRepositoryImpl(this.countryDao);

  @override
  Future<DataState<List<Country>>> getCountriesFromDB() async {
    try {
      List<Country> countries = await countryDao.getAllCountries();
      return DataSuccess(countries);
    } catch (e) {
      return DataError(e.toString());
    }
  }

  @override
  Future<DataState<String>> deleteCountry(String country) async {
    try {
      await countryDao.deleteCountryByName(country);
      return DataSuccess(country);
    } catch (e) {
      return DataError(e.toString());
    }
  } 

  @override
  Future<DataState<Country?>> findCountryByName(String name) async {
    try {
      Country? country = await countryDao.findCountryByName(name);
      print(country);
      return DataSuccess(country);
    } catch (e) {
      return DataError(e.toString());
    }
  }

  @override
  // ignore: avoid_renaming_method_parameters
  Future<DataState<Country>> insertCountry(InsertCountry insertCountry) async {
    try {
      Country? country = await countryDao.findCountryByName(insertCountry.countryName);
      if (country != null) {
        return DataError('Country already exists');
      }
      await countryDao.insertCountry(Country(
          insertCountry.countryName, insertCountry.flag, insertCountry.code));
      return DataSuccess(Country(
          insertCountry.countryName, insertCountry.flag, insertCountry.code));
    } catch (e) {
      return DataError(e.toString());
    }
  }
}
