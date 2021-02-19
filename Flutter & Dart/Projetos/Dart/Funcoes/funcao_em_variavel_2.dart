main() {
  // Função Anônima >> Adição
  var adicao = (int a, int b) {
    return a + b;
  };
  print(adicao(20, 10));

  // Função Anônima >> Subtração
  var subtracao = (int a, int b) => a - b;
  print(subtracao(20, 10));

  // Função Anônima >> Multiplicação
  var multiplicacao = (int a, int b) => a * b;
  print(multiplicacao(20, 10));

  // Função Anônima >> Divisão (Inferência transforma o retorno em double)
  var divisao = (int a, int b) => a / b;
  print(divisao(20, 10));
}
