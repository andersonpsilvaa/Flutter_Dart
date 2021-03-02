import '../model/venda.dart';
import '../model/cliente.dart';
import '../model/venda_item.dart';
import '../model/produto.dart';

main() {
  var venda =
      Venda(cliente: Cliente(nome: 'José', cpf: '123.456.789-00'), itens: [
    VendaItem(
        quantidade: 30,
        produto: Produto(codigo: 1, preco: 6.00, nome: 'Lápis', desconto: 0.5)),
    VendaItem(
        quantidade: 20,
        produto: Produto(
            codigo: 123, nome: 'Caderno', preco: 20.00, desconto: 0.25)),
    VendaItem(
        quantidade: 100,
        produto:
            Produto(codigo: 52, nome: 'Borracha', preco: 2.00, desconto: 0.5))
  ]);

  print('Valor Total: ${venda.valorTotal}');
  print(' ');
  print('Nome do primeiro produto: ${venda.itens[0].produto.nome}');
  print('Preco do primeiro produto: ${venda.itens[0].produto.preco}');
}
