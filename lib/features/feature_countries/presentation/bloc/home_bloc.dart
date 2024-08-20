import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc_clean_architecture/core/resources/data_state.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/domain/use_cases/get_all_countries_usecases.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/domain/use_cases/get_search_country_usecases.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/presentation/bloc/country_status.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/presentation/bloc/search_status.dart';

import '../../../../core/usecase/use_case.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetAllCountriesUseCases getAllCountriesUseCases;
  final GetSearchCountriesUseCases getSearchCountriesUseCases;
  HomeBloc(this.getAllCountriesUseCases,this.getSearchCountriesUseCases)
      : super(HomeState(countryStatus: CountryLoading(),searchStatus: SearchLoading())) {
    on<CountryEvent>((event, emit) async {
      emit(state.copyWith(countryStatus: CountryLoading()));
      DataState dataState = await getAllCountriesUseCases(NoParams());

      if (dataState is DataSuccess) {
        emit(state.copyWith(countryStatus: CountryCompeleted(dataState.data)));
      }
      if (dataState is DataError) {
        emit(state.copyWith(countryStatus: CountryError(dataState.error!)));
      }
    });
    on<CountrySearchEvent>((event, emit) async {
      emit(state.copyWith(searchStatus: SearchLoading()));
      DataState dataState = await getSearchCountriesUseCases(event.name);

      if (dataState is DataSuccess) {
        emit(state.copyWith(searchStatus: SearchCompeleted(dataState.data)));
      }
      if (dataState is DataError) {
        emit(state.copyWith(searchStatus: SearchError(dataState.error!)));
      }
    });
  }
}
