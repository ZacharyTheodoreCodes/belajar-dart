import 'package:dart_application_1/monster.dart';

class MonsterGodzilla extends Monster {
  String destroyBuildings() => "Grr..burn this to the ground!";

  @override
  String attack() => "Fire that building!";

  @override
  String move() => "Merangkak";
}
