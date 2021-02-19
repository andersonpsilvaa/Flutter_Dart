// Função qie retorna o segundo elemento de uma lista
Object segundoElementoV1(List lista) {
  return lista.length >= 2 ? lista[1] : null;
}

//Função Genérica
E segundoElementoV2<E>(List<E> lista) {
  return lista.length >= 2 ? lista[1] : null;
}

main() {
  var lista = [3, 6, 7, 12, 45, 78, 1];
  print(segundoElementoV1(lista));

  print(segundoElementoV2(lista));
}
