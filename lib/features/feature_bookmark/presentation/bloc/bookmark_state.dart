part of 'bookmark_bloc.dart';

class BookmarkState extends Equatable {
  GetCountryStatus getCountryStatus;
  SaveCountryStatus saveCountryStatus;
  GetCountryByNameStatus getCountryByNameStatus;
  
  BookmarkState(
      {required this.getCountryStatus, required this.saveCountryStatus , required this.getCountryByNameStatus});
  BookmarkState copyWith(
      {GetCountryStatus? getCountryStatus,
      SaveCountryStatus? saveCountryStatus,
      GetCountryByNameStatus? getCountryByNameStatus
      }) {
    return BookmarkState(
        getCountryStatus: getCountryStatus ?? this.getCountryStatus,
        saveCountryStatus: saveCountryStatus ?? this.saveCountryStatus,
        getCountryByNameStatus: getCountryByNameStatus ?? this.getCountryByNameStatus
        );
  }

  @override
  List<Object> get props => [getCountryStatus, saveCountryStatus , getCountryByNameStatus];
}
