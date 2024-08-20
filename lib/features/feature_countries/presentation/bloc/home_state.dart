part of 'home_bloc.dart';

class HomeState extends Equatable{
CountryStatus countryStatus;
SearchStatus searchStatus;
HomeState({required this.countryStatus,required this.searchStatus});


HomeState copyWith({CountryStatus? countryStatus , SearchStatus? searchStatus}) {
  return HomeState(
    countryStatus: countryStatus ?? this.countryStatus
    ,searchStatus: searchStatus ?? this.searchStatus
  );
  }
  
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

