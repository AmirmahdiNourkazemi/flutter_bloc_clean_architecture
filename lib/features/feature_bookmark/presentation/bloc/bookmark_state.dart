part of 'bookmark_bloc.dart';

class BookmarkState extends Equatable {
  GetCountryStatus getCountryStatus;
  SaveCountryStatus saveCountryStatus;
  GetCountryByNameStatus getCountryByNameStatus;
  DeleteCountryStatus deleteCountryStatus;
  
  BookmarkState(
      {required this.getCountryStatus, required this.saveCountryStatus , required this.getCountryByNameStatus,required this.deleteCountryStatus});
  BookmarkState copyWith(
      {GetCountryStatus? getCountryStatus,
      SaveCountryStatus? saveCountryStatus,
      GetCountryByNameStatus? getCountryByNameStatus
      ,DeleteCountryStatus? deleteCountryStatus
      }) {
    return BookmarkState(
        getCountryStatus: getCountryStatus ?? this.getCountryStatus,
        saveCountryStatus: saveCountryStatus ?? this.saveCountryStatus,
        getCountryByNameStatus: getCountryByNameStatus ?? this.getCountryByNameStatus
        ,deleteCountryStatus: deleteCountryStatus ?? this.deleteCountryStatus
        );
  }

  @override
  List<Object> get props => [getCountryStatus, saveCountryStatus , getCountryByNameStatus];
}
