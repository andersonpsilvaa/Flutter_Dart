import 'dart:math';

main() {
  for (int a = 0; a < 10; a++) {
    if (a == 5) {
      break;
    }
    print(a);
  }

  print('Fim do Primeiro Laço!');
  print(' ');

  for (int a = 0; a < 10; a++) {
    if (a % 2 == 1) {
      continue;
    }
    print(a);
  }

  print('Fim do Segundo Laço!');
}
