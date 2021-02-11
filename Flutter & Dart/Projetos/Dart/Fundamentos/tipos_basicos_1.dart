/*
  - Números (int e double)
  - String
  - Booleano (true e false)
  - Dynamic
*/

main() {
  // Conceitos básicos de números
  int n1 = 3;
  double n2 = 5.5;
  num n3 = 6;
  print(n1 + n2 + n3);

  // Conceitos básicos de strings
  String s1 = "Bom";
  String s2 = "Dia";
  print(s1.toLowerCase() + " " + s2.toUpperCase());

  // Conceitos básicos de boleanos
  bool estaChovendo = true;
  bool muitoFrio = false;
  print(estaChovendo && muitoFrio);
  print(estaChovendo || muitoFrio);

  // Conceitos básicos de dynamic
  // Campo dinamico sem precisar defini-lo
  dynamic x = "Teste";
  dynamic y = 1;
  dynamic z = true;
  print(x + y.toString());
}
