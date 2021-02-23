// Em orientação a objetos, uma classe é uma descrição que abstrai um conjunto de objetos com características similares.
class Data {
  // Atributos da Classe
  int dia;
  int mes;
  int ano;

// Método é uma funçao dentro de uma classe.
  String obter() {
    return '$dia/$mes/$ano';
  }

  String toString() {
    return obter();
  }

// Contrutor é um mecaniscmo para criar novos objetos
  Data([this.dia = 1, this.mes = 1, this.ano = 2020]);
  //Exemplo
//   Data(int diaInicial, int mesInicial, int ano) {
//     dia = diaInicial;
//     mes = mesInicial;
//     this.ano = ano;
//   }

// Contrutor Nomeado com parametros nomeados
  Data.com({this.dia = 1, this.mes = 1, this.ano = 2022});
}

main() {
// Os Objetos/Instâncias são características definidas pelas classes.
  var dataAniversario = new Data(3, 10, 2020);
  Data dataCompra = Data(23, 12, 2021);

  String d1 = dataAniversario.obter();

  print('A data do Aniversário é $d1');
  print('A data da Compra é ${dataCompra.obter()};');

  // Com "[]" os parametros do contrutor tornam-se opcionais
  print(new Data());
  print(Data(31));
  print(Data(31, 03));
  print(Data(31, 03, 2021));

  print(Data.com(ano: 2023));
}
