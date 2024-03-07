//Named Parameter
void main(List<String> args) {
  //positional parameter: urutannya harus sama
  //optional parameter: fleksibel urutannya
  User u = User(200, 'Joko', age: 5, fullName: 'Joko Subandi');
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