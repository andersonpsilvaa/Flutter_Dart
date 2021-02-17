// For MAP
main() {
  Map<String, double> notas = {
    'Anderson': 8.9,
    'João': 9.3,
    'Maria': 7.8,
    'José': 6.9,
    'Diego': 9.1,
  };

  for (String nome in notas.keys) {
    print('O nome do Aluno é $nome');
  }

  print(" ");

  for (var nota in notas.values) {
    print('A nota é $nota');
  }

  print(" ");

  for (var registro in notas.entries) {
    print('O ${registro.key} tem a nota ${registro.value}');
  }
}
