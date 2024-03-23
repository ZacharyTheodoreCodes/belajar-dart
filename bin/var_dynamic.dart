/**
 * var: dipakai kalau gatau di awal tipe datanya apa tapi nanti akan tau
 * dynamic: dipakai kalau gatau tipe datanya
 */
void main(List<String> args) {
  dynamic myDinamic;
  myDinamic = 'hello';
  myDinamic = 12;

  myDinamic  = Person();
  if (myDinamic is Person){
    print(myDinamic.name);
  }
  //print((myDinamic as Person).name);

  //var: cuma 1 data type, kalau dinamic bisa di-reassign data type apapun
  //var gaperlu pakai as atau is, property dari instance classnya langsung muncul
  var myVar = 12;
  myVar  = 1;

  print(myVar);
}

class Person{
  String name = 'nama';
}