import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc_clean_architecture/core/resources/data_state.dart';
import 'package:flutter_bloc_clean_architecture/core/usecase/use_case.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_bookmark/domain/use_cases/find_country_db_usecase.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_bookmark/domain/use_cases/get_all_countries_db_usecase.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_bookmark/domain/use_cases/save_country_usecase.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_bookmark/presentation/bloc/get_country_by_name_status.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_bookmark/presentation/bloc/get_country_status.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_bookmark/presentation/bloc/save_country_status.dart';

part 'bookmark_event.dart';
part 'bookmark_state.dart';

class BookmarkBloc extends Bloc<BookmarkEvent, BookmarkState> {
  GetAllCountriesDBUseCases getAllCountriesDBUseCases;
  SaveCountryUseCase saveCountryUseCase;
  FindCountryByName findCountryByName;
  BookmarkBloc(this.getAllCountriesDBUseCases, this.saveCountryUseCase,
      this.findCountryByName)
      : super(BookmarkState(
            getCountryStatus: GetCountryLoading(),
            saveCountryStatus: SaveCountryInitial(),
            getCountryByNameStatus: GetCountryByNameInitial())) {
    on<SaveCountryEvent>((event, emit) async {
      emit(state.copyWith(saveCountryStatus: SaveCountryLoading()));
      DataState dataState = await saveCountryUseCase(event.country);

      if (dataState is DataSuccess) {
        emit(state.copyWith(
            saveCountryStatus: SaveCountrySuccess(dataState.data)));
      }
      if (dataState is DataError) {
        emit(state.copyWith(saveCountryStatus: SaveCountryError()));
      }
    });

on<GetAllCountryEvent>(
  (event, emit) async {
    emit(state.copyWith(getCountryStatus: GetCountryLoading()));
    DataState dataState = await getAllCountriesDBUseCases(NoParams());

    if (dataState is DataSuccess) {
      emit(state.copyWith(
          getCountryStatus: GetCountrySuccess(dataState.data),
          getCountryByNameStatus: GetCountryByNameInitial())); // Reset the GetCountryByNameStatus to its initial state
    } else if (dataState is DataError) {
      emit(state.copyWith(getCountryStatus: GetCountryError()));
    }
  },
);

on<GetCountryByNameEvent>(
  (event, emit) async {
    emit(state.copyWith(getCountryByNameStatus: GetCountryByNameLoading()));
    DataState dataState = await findCountryByName(event.countryName);

    if (dataState is DataSuccess) {
      emit(state.copyWith(
          getCountryByNameStatus: GetCountryByNameSuccess(dataState.data),
          getCountryStatus: GetCountryInitial())); // Reset the GetCountryStatus to its initial state
    } else if (dataState is DataError) {
      emit(state.copyWith(getCountryByNameStatus: GetCountryByNameError()));
    }
  },
);


    on<SaveCountryInitialEvent>(
      (event, emit) async {
        emit(state.copyWith(saveCountryStatus: SaveCountryInitial()));
      },
    );
  }
}
