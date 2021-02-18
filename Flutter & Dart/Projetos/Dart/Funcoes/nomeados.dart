main() {
  dadosPessoa("João", 33);

  dadosPessoaNomeados(nome: "Anderson", idade: 35);
  dadosPessoaNomeados(idade: 30, nome: "André");

  imprimitData(dia: 27, ano: 1986, mes: 2);
}

dadosPessoa(String nome, int idade) {
  print('Nome: $nome >> Idade: $idade ');
}

// Colocando entre {} a variável torna-se "nomeada", podendo atribuir os dados pelo nome
dadosPessoaNomeados({String nome, int idade}) {
  print('Nome: $nome >> Idade: $idade ');
}

imprimitData({int dia = 1, int mes = 1, int ano = 1970}) {
  print('$dia/$mes/$ano');
}
