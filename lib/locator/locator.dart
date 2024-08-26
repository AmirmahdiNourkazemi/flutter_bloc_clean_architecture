import 'package:flutter_bloc_clean_architecture/features/feature_bookmark/data/data_source/local/database.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/data/data_source/remote/api_provider.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/data/repository/country_repositoryImpl.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/domain/repository/country_repository.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/domain/use_cases/get_all_countries_usecases.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/domain/use_cases/get_search_country_usecases.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/presentation/bloc/home_bloc.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

setup() async {
  locator.registerSingleton<ApiProvider>(ApiProvider());

  final database = await $FloorAppDatabase.databaseBuilder('app_database.db').build();
  locator.registerSingleton<AppDatabase>(database);

  ///repositories 
  locator.registerSingleton<CountryRepository>(CountryRepositoryImpl(locator()));

  /// usecases
  locator.registerSingleton<GetAllCountriesUseCases>(GetAllCountriesUseCases(locator()));
   locator.registerSingleton<GetSearchCountriesUseCases>(GetSearchCountriesUseCases(locator()));

  /// bloc 
   locator.registerSingleton<HomeBloc>(HomeBloc(locator(),locator()));
}