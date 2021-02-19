import 'dart:math';

void executar(Function fnPar, Function fnImpar) {
  var sorteado = Random().nextInt(10);
  print(sorteado);
  sorteado % 2 == 0 ? fnPar() : fnImpar();
}

main() {
  var msgFnPar = () => print('Valor Par!');
  var msgFnImpar = () => print('Valor Impar!');

  executar(msgFnPar, msgFnImpar);
}
