main() {
  var notas = [1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0];

  var notasBoasFn = (double nota) => nota >= 7;
  var notasBoas = notas.where(notasBoasFn);

  var notasMuitoBoasFn = (double nota) => nota >= 9;
  var notasMuitoBoas = notas.where(notasMuitoBoasFn);

  print('Todas as notas são: $notas');
  print('As notas aprovadas são: $notasBoas');
  print('As melhores notas são: $notasMuitoBoas');
}
