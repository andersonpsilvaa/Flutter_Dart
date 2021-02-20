main() {
  // Variável com MAP (Função para mapear uma string e inteiros)
  var alunos = [
    {'nome': 'Anderson', 'nota': 9.0},
    {'nome': 'José', 'nota': 8.9},
    {'nome': 'Mariana', 'nota': 7.9},
    {'nome': 'Rochelle', 'nota': 6.9},
    {'nome': 'Fernando', 'nota': 5.9},
    {'nome': 'Vanessa', 'nota': 4.9},
  ];

  String Function(Map elemento) pegarNome = (aluno) => aluno['nome'];
  int Function(String elemento) qtdeLetras = (qtde) => qtde.length;

  var nomesAlunos = alunos.map(pegarNome);
  var quantidade = nomesAlunos.map(qtdeLetras);

  print(nomesAlunos);
  print(quantidade);
}
