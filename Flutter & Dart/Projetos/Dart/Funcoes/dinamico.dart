// O Dart é uma linguagem de "tipagem" forte, importante sempre cuidar com os tipos utilizados
main() {
  juntar(1, 9);
  juntar('Bom ', 'dia!');
}

String juntar(dynamic a, b) {
  print(a.toString() + b.toString());
  return a.toString() + b.toString();
}
