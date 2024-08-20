


import 'package:flutter_bloc_clean_architecture/core/usecase/use_case.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/domain/entities/countries_entity.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/domain/repository/country_repository.dart';

import '../../../../core/resources/data_state.dart';

class GetSearchCountriesUseCases implements UseCase<DataState<List<CountriesModelEntity>>,String>{
  final CountryRepository countryRepository;
  GetSearchCountriesUseCases( this.countryRepository);
  Future<DataState<List<CountriesModelEntity>>> call(String param){
    return countryRepository.getSearchNameCountries(param);
  }
}