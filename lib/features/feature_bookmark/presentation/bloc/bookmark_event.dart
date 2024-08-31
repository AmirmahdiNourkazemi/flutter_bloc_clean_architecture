part of 'bookmark_bloc.dart';

abstract class BookmarkEvent {

}

class GetAllCountryEvent extends BookmarkEvent {}

class SaveCountryEvent extends BookmarkEvent {
  final InsertCountry country;
  SaveCountryEvent(this.country);
}

class DeleteCountryEvent extends BookmarkEvent {
  final String countryName;
  DeleteCountryEvent(this.countryName);
}

class GetCountryByNameEvent extends BookmarkEvent {
  final String countryName;
  GetCountryByNameEvent(this.countryName);
}


class SaveCountryInitialEvent extends BookmarkEvent {}