main() {
// Aritméticos (binários/infix)
  int a = 7;
  int b = 3;
  int resultado = a + b;

  print(resultado);
  print(a - b);
  print(a / b);
  print(a * b);
  print(a % b); //resto

  print(" ");

  //Lógicos
  bool produtoFragil = true;
  bool produtoCaro = false;

  print(produtoFragil &&
      produtoCaro); // AND - E (os dois precisam ser verdadeiros)
  print(produtoFragil || produtoCaro); // OR - OU (um precisa ver verdadeiro)
  print(produtoFragil ^
      produtoCaro); // XOR - OU exclusivo (somente um pode ser verdadeiro)
  print(!produtoCaro); // NOT - NEGAÇÃO(!)
}
