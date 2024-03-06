/**
 * sort:
 * string
 * integer
 * 
 * foreach 
 * 
 * 
 */

void main(List<String> args) {
  List<Person> persons = [
    Person('Admin', 29),
    Person('User', 23),
    Person('Merchant', 19),
    Person('Admin', 28),
    Person('User', 26),
    Person('Merchant', 17)
  ];

//sort by age
  //persons.sort((p1, p2) => p1.age - p2.age);

//sort string
  //persons.sort((p1, p2) => p1.role.compareTo(p2.role));

//sort string & age
  // persons.sort((p1, p2) {
  //   //kalau rolenya beda akan != 0, kalau sama == 0
  //   if (p1.role.compareTo(p2.role) != 0) {
  //     return p1.role.compareTo(p2.role);
  //   } else {
  //     return p1.age.compareTo(p2.age);
  //   }
  // });

//custom sorting
  persons.sort((p1, p2) {
    if (p1.roleWeight - p2.roleWeight != 0) {
      return p1.roleWeight - p2.roleWeight;
    } else {
      return p1.age - p2.age;
    }
  });

  
  persons.forEach((element) {
    print('${element.role} - ${element.age} ');
  });
}

class Person {
  String role;
  int age;

  Person(this.role, this.age);

  int get roleWeight {
    switch (role) {
      case 'Merchant':
        return 1;
      case 'User':
        return 2;
      case 'Admin':
        return 3;
      default:
        return 0;
    }
  }
}
