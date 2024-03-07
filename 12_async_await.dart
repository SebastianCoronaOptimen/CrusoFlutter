void main() async {
  
  print('Inicio del main');
  
  try{
      final value = await httpGet('https//asdasdasdas');
      print(value);
  }catch(err){
    print('Error: $err');
  }
  

  
  print('Fin del programa');
  
}

Future<String> httpGet (String url) async {
  await Future.delayed( const Duration(seconds: 1));
  throw 'Error en la peticion';
  //return 'Tenemos un valor en la peticion';

}