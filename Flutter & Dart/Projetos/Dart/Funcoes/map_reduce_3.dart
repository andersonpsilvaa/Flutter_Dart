main() {
  // Variável com MAP (Função para mapear uma string e inteiros)
  var alunos = [
    {'nome': 'Anderson', 'nota': 9.0},
    {'nome': 'José', 'nota': 8.9},
    {'nome': 'Mariana', 'nota': 7.9},
    {'nome': 'Rochelle', 'nota': 6.9},
    {'nome': 'Fernando', 'nota': 5.9},
    {'nome': 'Vanessa', 'nota': 9.9},
  ];

  var total = alunos
      .map((aluno) => aluno['nota'])
      .map((nota) => (nota as double).roundToDouble())
      .reduce((t, a) => t + a);

  print('Valor total é: $total');
  print('Valor da média é: ${total / alunos.length}');
}
