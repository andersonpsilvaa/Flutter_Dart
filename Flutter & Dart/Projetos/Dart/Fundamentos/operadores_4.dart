import 'dart:io';

main() {
  //Operadores Ternários
  stdout.write("Está chovendo? (S/N) >> ");
  final resposta = stdin.readLineSync();
  bool estaChovendo = resposta == "S";
  print(estaChovendo);

  print("");

  stdout.write("Está frio? (S/N) >> ");
  final estaFrio = stdin.readLineSync() == "S";
  print(estaFrio);

  print("");

  String resultado = estaChovendo || estaFrio ? "Ficar em casa" : "Sair!!";
  print(resultado);
}
