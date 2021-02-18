import 'dart:math';

main() {
  int resultado = somar(2, 3);
  resultado *= 2;
  print(resultado);

  print('O resultado é ${somarNumerosAleatorios()}');
}

// Quando é colocado um tipo na frente da função indica o tipo de retorno dela
int somar(int a, int b) {
  return a + b;
}

int somarNumerosAleatorios() {
  int a = Random().nextInt(11);
  int b = Random().nextInt(11);
  return a + b;
}
