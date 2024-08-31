part of 'bookmark_bloc.dart';

class BookmarkState extends Equatable {
  GetCountryStatus getCountryStatus;
  SaveCountryStatus saveCountryStatus;
  BookmarkState(
      {required this.getCountryStatus, required this.saveCountryStatus});
  BookmarkState copyWith(
      {GetCountryStatus? getCountryStatus,
      SaveCountryStatus? saveCountryStatus}) {
    return BookmarkState(
        getCountryStatus: getCountryStatus ?? this.getCountryStatus,
        saveCountryStatus: saveCountryStatus ?? this.saveCountryStatus);
  }

  @override
  List<Object> get props => [getCountryStatus, saveCountryStatus];
}
