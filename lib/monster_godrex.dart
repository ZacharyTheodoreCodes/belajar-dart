import 'package:dart_application_1/dinosaur_monster.dart';
import 'package:dart_application_1/growl_ability_mixin.dart';
import 'package:dart_application_1/monster_godzilla.dart';

/**
 * Inheritance: extends 
 * Interface: implements -> harus override, bisa implement banyak interface
 * Mixin : with -> menambahkan behavior, bisa banyak Mixin
 */
class MonsterGodrex extends MonsterGodzilla
    with GrowlAbilityMixin
    implements DinosaurMonster {
  @override
  String eat() => "gimme that meat!";

  @override
  String attack() => "Fire,fire,fire!";
}
