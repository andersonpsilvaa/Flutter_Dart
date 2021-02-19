main() {
  // Variável recebendo uma função
  int Function(int, int) soma1 = somaFn;
  print(soma1(22, 33));
  print(' ');

  // Função Anônima >> Utilizar somente quando precisar fazer ações iguais na mesma classe
  int Function(int, int) soma2 = (x, y) {
    return x + y;
  };

  print(soma2(300, 200));
  print(' ');
}

int somaFn(int a, int b) {
  return a + b;
}
