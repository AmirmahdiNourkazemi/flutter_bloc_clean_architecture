import 'package:equatable/equatable.dart';
import 'package:floor/floor.dart';

@entity
class Country extends Equatable {
  @PrimaryKey(autoGenerate: true)
int? id;  
String name;
String flag;
String code;
Country(this.name, this.flag, this.code);
@override
List<Object?> get props => [name,flag,code];
}