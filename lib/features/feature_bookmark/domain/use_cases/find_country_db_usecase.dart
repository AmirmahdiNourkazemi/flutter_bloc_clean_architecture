import 'package:flutter_bloc_clean_architecture/core/resources/data_state.dart';

import '../../../../core/usecase/use_case.dart';
import '../entities/country_entity.dart';
import '../repository/bookmark_repository.dart';

class FindCountryByName implements UseCase<DataState<Country?>,String>{
  final BookmarkRepository countryRepository;
  FindCountryByName(this.countryRepository);
  @override
  Future<DataState<Country?>> call(String params) {
    return countryRepository.findCountryByName(params);
  }
  
}  