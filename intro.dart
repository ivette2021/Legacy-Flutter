
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
    void main(){

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
  }