import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_clean_architecture/core/resources/data_state.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/domain/use_cases/get_all_countries_usecases.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/presentation/bloc/country_status.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetAllCountriesUseCases getAllCountriesUseCases;
  HomeBloc(this.getAllCountriesUseCases) : super(HomeState(countryStatus: CountryLoading())) {
    on<CountryEvent>((event, emit) async{
     emit(state.copyWith(countryStatus: CountryLoading()));
     DataState dataState = await getAllCountriesUseCases("");
   
if (dataState is DataSuccess) {
  emit(state.copyWith(countryStatus: CountryCompeleted(dataState.data)));
}
if (dataState is DataError) {
  emit(state.copyWith(countryStatus: CountryError(dataState.error!)));
}

    });
  }
}
