main() {
/* Criação de variaveis */
  var a = 2;
  var b = 4.56;
  var c = "Valor da soma é: ";

// Exibe o resultado
// .toString > Converte o resultado em string
  print(c + (b + a).toString());

//runtimeType >> Exibe do tipo da variavel
  print(a.runtimeType);
  print(c.runtimeType);

// Tem como validar a variavel
  print(a is int);
  print(c is int);
}
