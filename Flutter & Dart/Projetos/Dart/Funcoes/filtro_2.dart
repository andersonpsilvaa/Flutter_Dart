main() {
  var notas = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  var notasBoasFn = (double nota) => nota >= 7;
  var notasBoas = notas.where(notasBoasFn);

  var notasMuitoBoasFn = (double nota) => nota >= 9;
  var notasMuitoBoas = notas.where(notasMuitoBoasFn);

  print(notas);
  print(notasBoas);
}
