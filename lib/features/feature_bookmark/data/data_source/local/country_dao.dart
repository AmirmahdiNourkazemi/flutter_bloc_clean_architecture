import 'package:floor/floor.dart';

import '../../../domain/entities/country_entity.dart';

@dao
abstract class CountryDao {
@Query('SELECT * FROM Country')
Future<List<Country>> getAllCountries();

@Query('Select * from Country where name like :name')
Future<Country?> findCountryByName(String name);

@insert
Future<void> insertCountry(Country country);

@Query('DELETE FROM Country where name like :name')
Future<void> deleteCountryByName(String name);
} 