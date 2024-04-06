//String----------------------
/* void main(){
  print('Hola Mundo');
  
  var nombre ='Monica';
  final apellido = 'Geller';
  
  nombre = 'Ross';
  print('$nombre $apellido');//inclui un espacio para que salga en la impresion
} */

//Boleanos y condiciones ----------------------------
/* void main(){
  bool? isActive = null; //el signo de interrogacion con esto dices que podria o no ser nulo

  if(isActive == null){
    print('isActive es null');
  } else{
    print('no es null');
  }
} */

//Lista------------------
/* void main(){
  List numeros =[1,2,3,4,5,6,7,8,9,0]; //si reemplazas List por dynamic hace mas estricto el tipo de dato que soporta la lista
  numeros.add(11);
  print(numeros[0])

  final masNumeros = List.generate(100, (int index) => 10);//argumento posicional para crear los 100 elementos de mi arreglo de numeros 10

  } */

//MAP------------------ain(){
/*     void main(){

    Map persona = { //podemos limitar el tipo de datos ej Map<String, String>
      'nombre':'Monica',
      'edad':35,
      'soltero': false,
      true: false,
      1:100,
      2:500
    };
    persona.addAll({3:'Juan'});
    print(persona);
  } */

//funciones dart
/*   void main(){
final nombre = 'ivette';
saludar(nombre);
//saludar(nombre, 'greeteing'); //con esto omitimos el mensaje y decimo greeting ivatte en vez de como esta abajo que diria hola ivette
saludar2(nombre:nombre);
saludar3(nombre:nombre, mensaje:'aqui va el otro parametro requerido');
  }

  void saludar(String name, [String mensaje = 'hola']){ //argumento posicional obligatorio, sin le agregas los corchetes va a ser argumento opcional tambien
    print('$mensaje $name, ¿que tal la vida?');
  }

    void saludar2({String nombre = 'No name', String? mensaje}){ //argumento posicional obligatorio, sin le agregas los corchetes va a ser argumento opcional tambien
    print('$mensaje $nombre'); //te imprimira null ivette debido a que colocamos que el mensaje podria o no ser nulo
  }

      void saludar3({
        required nombre, 
        required mensaje}){ // siempre que se quiera usar esta funcion se necesita requerir obnligatoriamente los datos
    print('$mensaje $nombre'); 
  }
 */

//clases en dart
// void main() {
//   final rawJson = {'nombre': ' Tony Stark', 'poder': 'Dinero'};

//   //final wolverine = new Heroe(nombre: 'Logan', poder: 'Regeneración');

// //   wolverine.nombre = 'Logan';
// //   wolverine.poder = 'Regeneración';

//   final ironman = Heroe.fromJason(rawJson);
//   print(ironman);

//   // print(wolverine);
// }

// class Heroe {
//   String?
//       nombre; //cuando se cree una instancia no necesariamente va a tener un poder y un nombre eso significa el signo de interrogacion
//   String? poder;

//   Heroe({required this.nombre, required this.poder});

// //   Heroe( String pNombre ) {
// //     this.nombre = pNombre;
// //   }

//   Heroe.fromJason(Map<String, String> json) {
//     //contructor from json
//     this.nombre = json['nombre']!;
//     // this.poder = json[poder]!;// cuidado con usar signo de exclamancion ya que estas dando a entender que si o si va el dato
//     this.poder = json[poder] ??
//         'No tiene poder'; // muchas veces se usa doble singo de interrogacion en caso de no estar el valor
//   }

//   String toString() {
//     return 'Heroe: nombre: ${this.nombre}, poder: ${this.poder}'; //transforme en string una instancia de mi clase
//   }
// }

// import 'dart:math' as math;

// void main() {
//   final cuadrado = new Cuadrado(2);

//   cuadrado.area = 100;

//   print('area: ${cuadrado.calculaArea()}');

//   print('lado: ${cuadrado.lado}');
//   print('area get: ${cuadrado.area}');
// }

// //Getter and Setters
// class Cuadrado {
//   //constructor

//   double lado; // lado * lado

//   double get area {
//     return this.lado * this.lado;
//   }

//   set area(double valor) {
//     this.lado = math.sqrt(valor);
//   }

//   Cuadrado(double lado) : this.lado = lado;

//   double calculaArea() {
//     return this.lado * this.lado;
//   }
// }

// void main() {
//   //final perro = new Animal();//clase abstracta no pueden ser instanciadas
//   final perro = new Perro();
//   final gato = new Gato();

//   sonidoAnimal( perro );
//   sonidoAnimal( gato );

// }

// void sonidoAnimal( Animal animal ) {
//   animal.emitirSonido();
// }

// abstract class Animal {

//   int? patas;
//   void emitirSonido();

// }

// class Perro implements Animal {

//   int? patas;

//   void emitirSonido() => print('Guauuuuuuuu');

// }

// class Gato implements Animal {

//   int? patas;
//   int? cola;

//   void emitirSonido() => print('Miauuuuuuuu');
// }

// abstract class Animal {}

// abstract class Mamifero extends Animal {}

// abstract class Ave extends Animal {}

// abstract class Pez extends Animal {}

// abstract class Volador {
//   void volar() => print('estoy volando');
// }

// abstract class Caminante {
//   void caminar() => print('estoy caminando');
// }

// abstract class Nadador {
//   void nadar() => print('estoy nadando');
// }

// class Delfin extends Mamifero
//     with Nadador {} //con la palabra with identificamos un mixing

// class Murcielago extends Mamifero with Caminante, Volador {}

// class Gato extends Mamifero with Caminante {}

// class Paloma extends Ave with Caminante, Volador {}

// class Pato extends Ave with Caminante, Volador, Nadador {}

// class Tiburon extends Pez with Nadador {}

// class PezVolador extends Pez with Nadador, Volador {}

// void main() {
// //   final flipper = new Delfin();
// //   flipper.nadar();

// //   final batman = new Murcielago();
// //   batman.caminar();
// //   batman.volar();
// }

// //Future
// void main() {
//   //future es una tarea asincrona que se hace a desotiempo es como las corrutinas
//   print('Antes de la petición');

//   httpGet('https://api.nasa.com/aliens').then((data) {
//     print(data.toUpperCase());
//   });

//   print('Fin del programa');
// }

// Future<String> httpGet(String url) {
//   return Future.delayed(Duration(seconds: 3), () => 'Hola Mundo - 3 segundos');
// }

// Async - await
void main() async {
  //async retorna algo de tipo future no es un string ,  Tambien se tranforma la funcion en async para poder usar await
  print('Antes de la petición');

  final data = await httpGet(
      'https://api.nasa.com/aliens'); // parecido a suspend fun de kotlin

  print(data);

//   final nombre = await getNombre( '10' );
//   print( nombre );
//    getNombre( '10' ).then( print );

  print('Fin del programa');
}

Future<String> getNombre(String id) async {
  //por eso se cambio por Future la palabra orioginalmente String
  return '$id - Fernando';
}

Future<String> httpGet(String url) {
  return Future.delayed(Duration(seconds: 3), () => 'Hola Mundo - 3 segundos');
}
