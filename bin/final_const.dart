/**
 * const: menunjuk ke object yang sama di memori
 * const: static variable, variable local, atau di top level
 * Pointer:
 * - membuat object baru, jadi kalau dibandingkan == hasilnya not identical
 * 
 * Final:
 * -Mirip2 const di javascript, valuenya gabisa diubah
 */

const pi = 3.14;

void main(List<String> args) {
  var a  = const ConstClass(number: 5);
  var b  = const ConstClass(number: 5);

  print(identical(a, b));
  print(pi);
}

class RegularClass{
  final int number;
  RegularClass({this.number = 0});
}

class ConstClass{
  final int number;
  const ConstClass({this.number = 0});
}