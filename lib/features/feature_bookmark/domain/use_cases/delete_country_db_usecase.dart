import 'package:flutter_bloc_clean_architecture/features/feature_bookmark/domain/entities/country_entity.dart';

import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/use_case.dart';
import '../repository/country_repository.dart';

class DeleteCountryByName implements UseCase<DataState<String>,String>{
  final CountryRepository countryRepository;
  DeleteCountryByName(this.countryRepository);
  @override
  Future<DataState<String>> call(String params) {
    return countryRepository.deleteCountry(params);
  }
}