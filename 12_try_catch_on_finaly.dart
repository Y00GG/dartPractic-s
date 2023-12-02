void main() async {
  print('Inicio del programa');

  try {
    final value = await httpGet('google.com');
    print(value);
  } on Exception {
    print('Tenemos una exception:');
  } catch (err) {
    print('Algo terrible paso: $err');
  } finally {
    print('Fin del try y catch');
  }

  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 5));

  throw Exception('No hay parametros en el URL');

  //return 'Tenemos un valor de la peticion';
}
