void main (){
  
  print('Inicio del programa');
  
  httpGet( 'google.com' )
    .then( 
      (value) {
      print( value );
      })
    .catchError( 
      (err) {
      print( 'Error $err' );
  });
  
  print('Fin del programa');
  
}

Future<String> httpGet( String url ){
  
  return Future.delayed( const Duration(seconds: 7), (){
  
    throw 'Error en la peticion Http';
    // return 'Respuesta de la peticion Http';
  
  });
  
}