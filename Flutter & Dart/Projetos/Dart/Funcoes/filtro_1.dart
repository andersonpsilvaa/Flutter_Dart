// Fazer um filtro de forma ESTRUTURAL
main() {
  var notas = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  var notasBoas = [];

  for (var nota in notas) {
    if (nota >= 7) {
      notasBoas.add(nota);
    }
  }

  print(notas);
  print('');
  print(notasBoas);
}
