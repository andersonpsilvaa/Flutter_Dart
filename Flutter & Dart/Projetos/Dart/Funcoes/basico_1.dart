import 'dart:math';

main() {
  somaComPrint(2, 3);
  print(' ');

  int c = 4;
  int d = 5;
  somaComPrint(c, d);
  print(' ');

  somaDoisNumeros();
}

// Void = Função que executa um comando e não retorna dados
void somaComPrint(int a, int b) {
  print(a + b);
}

void somaDoisNumeros() {
  int n1 = Random().nextInt(11);
  int n2 = Random().nextInt(11);
  print('Valores aleatórios são $n1 e $n2');
  print(n1 + n2);
}
