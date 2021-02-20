import 'basico_2.dart';

main() {
  var notas = [1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0];
  var total = 0.0;

  for (var nota in notas) {
    total += nota;
  }
  print(total);
  print('');

  var totalReduce = notas.reduce(somar);
  print(totalReduce);
}

// Criando Função para utilizar Reduce
double somar(double acumulado, double elemento) {
  print('$acumulado $elemento');
  return acumulado + elemento;
}
