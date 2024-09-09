import 'package:floor/floor.dart';

import '../../../domain/entities/country_entity.dart';

@dao
abstract class CountryDao {
@Query('SELECT * FROM Country')
Future<List<Country>> getAllCountries();

@Query('SELECT * FROM Country WHERE name = :name')
Future<Country?> findCountryByName(String name);

@insert
Future<void> insertCountry(Country country);

@Query('DELETE FROM Country WHERE name = :name')
Future<void> deleteCountryByName(String name);
} 