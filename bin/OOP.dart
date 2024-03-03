
import 'package:dart_application_1/hero.dart';
import 'package:dart_application_1/monster.dart';
import 'package:dart_application_1/monster_godrex.dart';
import 'package:dart_application_1/monster_godzilla.dart';
import 'package:dart_application_1/persegi_panjang.dart';

void main(List<String> args) {
  PersegiPanjang kotak1;
  //double luasKotak1;

  kotak1 = PersegiPanjang();
  kotak1.setPanjang(2);
  kotak1.lebar = 4;

  //luasKotak1 = kotak1.luas;
  //print(luasKotak1);
  //print(kotak1);

  //initialize a class
  Hero batman = Hero();

  batman.healhpoint = 10;
  // print(batman.killAllMonsters());

  //Bikin monster2 di dalam array, trus masing2 diprint method yang di-inheritnya
  Monster godzilla = MonsterGodzilla();
  Monster godrex = MonsterGodrex();
  List monsters = [];
  monsters.add(godzilla);
  monsters.add(godrex);

  for (Monster m in monsters) {
    //pakai is untuk ngecek dia instance apa

      print(m.attack());
      //print(m.destroyBuildings());
      print(m.move());
      //print(m.eat());

    if (m is MonsterGodrex){
    print(m.growl());
    }
  }

  //abstract class: template object. Ex: monster in godzilla,
}



//enkapsulasi
