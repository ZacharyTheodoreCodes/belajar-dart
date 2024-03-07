/**
 * Singleton: design pattern, bikin banyak variable dari 1 class (only one instance & provides a global point of access to that instance)
 */
void main(List<String> args) {
  // ServicesSingleton service1 = ServicesSingleton();
  // ServicesSingleton service2 = ServicesSingleton();

  ServicesSingleton service1 = ServicesSingleton.instance;
  ServicesSingleton service2 = ServicesSingleton.instance;

  print (service1 == service2);
}


class ServicesSingleton{
  //bikin constructornya
  ServicesSingleton._internal();

  //static: propertynya belongs to this class
  //final: valuenya gaakan berubah
  static final ServicesSingleton _instance = ServicesSingleton._internal();

  //factory: provide global point of access
  // factory ServicesSingleton(){
  //   return _instance;
  // }
  
  static ServicesSingleton get instance => _instance;
}
