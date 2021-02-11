/*
  - List
  - Set
  - Map
*/

main() {
  // Conceitos básicos de List
  // Permite repetição de dados
  List aprovados = ['Ana', 'Carlos'];
  print(aprovados is List);
  print(aprovados.length);
  print(aprovados);
  print(aprovados.elementAt(1));

  print("  ");

  // Conceitos básicos de Map
  var telefones = {
    'João': '(51) 3333-3333',
    'Felipe': '(51) 3333-3333',
    'Maria': '(51) 3333-3333'
  };
  print(telefones is Map);
  print(telefones.length);
  print(telefones);
  print(telefones['João']);
  print(telefones.keys);
  print(telefones.values);
  print(telefones.entries);

  print("  ");

  // Conceitos básicos de Set
  // Set não permite repetição de dados
  var times = {'Vasco', 'Grêmio', 'Palmeiras'};
  print(times is Set);
  print(times.length);
  print(times.isEmpty);
  times.add('Flamengo');
  print(times.contains('Grêmio'));
  print(times.first);
  print(times.last);
}
