import 'dart:io';

main() {
  var digitado = '';

  int a = 1;
  while (a < 10) {
    print(a);
    a++;
  }

  print(' ');

  while (digitado != 'sair') {
    stdout.write('Digite sair: ');
    digitado = stdin.readLineSync();
  }

  print(' ');

  // Executa sempre pelo menos uma vez
  do {
    stdout.write('Digite sair: ');
    digitado = stdin.readLineSync();
  } while (digitado != 'sair');

  print(' ');
  print('Fim!');
}
