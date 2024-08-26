import 'package:flutter_bloc_clean_architecture/core/resources/data_state.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_bookmark/domain/entities/country_entity.dart';

import '../../../../core/usecase/use_case.dart';
import '../repository/country_repository.dart';

class GetAllCountriesDBUseCases implements UseCase<DataState<List<Country>>,NoParams>{

  final CountryRepository countryRepository;

  GetAllCountriesDBUseCases(this.countryRepository);
  
  @override
  Future<DataState<List<Country>>> call(NoParams params) {
    return countryRepository.getCountriesFromDB();
  }
}