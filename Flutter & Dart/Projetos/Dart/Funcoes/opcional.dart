import 'dart:math';

main() {
  int n1 = numeroAleatorio(100);
  print(n1);
  print(' ');

  int n2 = numeroAleatorio();
  print(n2);

  imprimitData();
  imprimitData(2);
  imprimitData(27, 2);
  imprimitData(29, 2, 1986);
}

// Se colocar a variavel dentro de [] o valor torna-se opcional, mas é importante definir um valor padrão para não ocasionar erro
int numeroAleatorio([int maximo = 11]) {
  return Random().nextInt(maximo);
}

imprimitData([int dia = 1, int mes = 1, int ano = 1970]) {
  print('$dia/$mes/$ano');
}
