import 'dart:io';

main() {
  //const é utilizado para valores/campos pré-definidos no código
  const PI = 3.1415;

  //stdout.write não quebra a linha
  stdout.write("Informe o valor para cálculo do raio: ");
  var entradaDoUsuario = stdin.readLineSync();

  // Area de circunferência = PI* raio * raio
  // final quer dizer que o campo é constante (não terá alterações)
  final raio = double.parse(entradaDoUsuario);

  // Calculo
  final area = PI * raio * raio;

  print("O valor do raio é: " + area.toString());
}
