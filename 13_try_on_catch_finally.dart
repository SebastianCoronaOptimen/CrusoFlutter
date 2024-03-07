void main() async {
  
  print('Inicio del main');
  
  try{
      final value = await httpGet('https//asdasdasdas');
      print('Exito: $value');
    
  } on Exception catch(err){
    print('Tenemos una Exception: $err');
    
  }
  catch(err){
    print('Error: $err');
    
  }finally{
    print('Fin del try catch');
    
  }
  

  
  print('Fin del programa');
  
}

Future<String> httpGet (String url) async {
  await Future.delayed( const Duration(seconds: 1));
  throw Exception('No hay parametros en el URL');
  //throw 'Error en la peticion';
  //return 'Tenemos un valor en la peticion';

}