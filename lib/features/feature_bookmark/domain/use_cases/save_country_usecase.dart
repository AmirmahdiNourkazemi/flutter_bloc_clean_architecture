import 'package:flutter_bloc_clean_architecture/core/resources/data_state.dart';
import 'package:flutter_bloc_clean_architecture/core/usecase/use_case.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_bookmark/domain/entities/country_entity.dart';

import '../repository/country_repository.dart';


class SaveCountryUseCase implements UseCase<DataState<Country>,InsertCountry>{

  final CountryRepository countryRepository;
  SaveCountryUseCase(this.countryRepository);

  @override
  Future<DataState<Country>> call(InsertCountry params) {
    return countryRepository.insertCountry(params);
  }
}