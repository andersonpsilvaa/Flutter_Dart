// Criar função Genérica que pode ser definina no momento da chamada
List<E> filtrar<E>(List<E> lista, bool Function(E) fn) {
  List<E> listafiltrada = [];

  for (E elemento in lista) {
    if (fn(elemento)) {
      listafiltrada.add(elemento);
    }
  }
  return listafiltrada;
}

main() {
  var notas = [1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0];
  var boasNotasFn = (double nota) => nota >= 8;

  var somentaNotasBoas = filtrar<double>(notas, boasNotasFn);
  print(somentaNotasBoas);

  var nomes = ['Anderson', 'Ana', 'João', 'Bia'];
  var nomesGrandesFn = (String nome) => nome.length >= 5;
  print(filtrar(nomes, nomesGrandesFn));
}
