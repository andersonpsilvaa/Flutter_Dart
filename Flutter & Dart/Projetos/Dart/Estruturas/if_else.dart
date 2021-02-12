import 'dart:math';

main() {
  var nota = Random().nextInt(11);

  print('Nota randômica: $nota');
  if (nota >= 7) {
    print('Aprovado!');
  } else if (nota >= 5) {
    print('Recuperação!');
  } else if (nota >= 4) {
    print('Recuperação + Trabalho Extra!');
  } else {
    print('Reprovado!');
  }
  ;
}
