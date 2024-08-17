import 'package:dio/dio.dart';
import 'package:flutter_bloc_clean_architecture/core/resources/data_state.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/data/data_source/remote/api_provider.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/domain/entities/countries_entity.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/domain/repository/country_repository.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/data/models/countries_model/countries_model.dart';

class CountryRepositoryImpl extends CountryRepository {
  ApiProvider apiProvider;
  CountryRepositoryImpl(this.apiProvider);
  @override
  Future<DataState<CountriesModelEntity>> getCountries() async {
    try {
      Response response = await apiProvider.getCountryList();
      if (response.statusCode == 200) {
        CountriesModelEntity countryModelEntity =
            CountriesModel.fromJson(response.data);
        return DataSuccess(countryModelEntity);
      } else {
        return DataError('Something went wrong'); 
      }
    } catch (e) {
      return DataError('network error');
    }
  }
}
