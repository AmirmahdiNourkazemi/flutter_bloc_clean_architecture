part of 'home_bloc.dart';

class HomeState {
CountryStatus countryStatus;
HomeState({required this.countryStatus});


HomeState copyWith({CountryStatus? countryStatus}) {
  return HomeState(
    countryStatus: countryStatus ?? this.countryStatus
  );
  }
}

