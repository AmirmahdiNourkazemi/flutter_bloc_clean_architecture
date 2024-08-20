part of 'home_bloc.dart';

abstract class HomeEvent {
}

class CountryEvent extends HomeEvent {
}

class CountrySearchEvent extends HomeEvent {
  String name;
  CountrySearchEvent(this.name);
}

class CountrySearchHomeEvent extends HomeEvent {
  String name;
  CountrySearchHomeEvent(this.name);
}