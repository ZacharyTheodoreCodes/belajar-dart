//Named Parameter
import 'dart:html';

void main(List<String> args) {
  //positional parameter: urutannya harus sama
  //optional parameter: fleksibel urutannya
  User u = User(200, 'Joko', age: 5, fullName: 'Joko Subandi');
  //declare enumnya: pake dot.
  UserAuthException a = UserAuthException.invalidPassword;

  print(a); //sama dengan a.toString()
  print(a.code);
  print(a.description);

}

enum AdministratorType{
  generalAdministrator,
  securityAdministrator,
  superAdministrator
}

class User{
  int id;
  String username;
  String fullName;
  int age;

  User(this.id,this.username, {this.fullName ="no name", required this.age });
}

//Super Initializer
class Administrator extends User{

  AdministratorType administratorType; 
  Administrator(super.id, super.username, {super.fullName,  required super.age, required this.administratorType});

}

//Enhanced Enum
/**
 * Before: kalau mau bikin property di anaknya enum, harus bikin extension dan didalamnya ada getter
 */
enum UserAuthException{
  invalidPassword(100,'Wrong Password'),
  invalidUsername(200,'Username does not exist');

  final int code;
  final String description;

  const UserAuthException(this.code, this.description);

  double get exceptionCodeInDouble => code.toDouble();

  @override 
  String toString() => '$name is one of user auth exceptions.';
}



//before
// extension UserAuthExceptionExtension on UserAuthException{
//   String get description{
//     if (name == 'invalidPassowrd'){
//       return 'Wrong Password';
//     }else {
//       return 'Username does not exist';
//     }
//   }
// }
