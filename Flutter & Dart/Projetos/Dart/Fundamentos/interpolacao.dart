main() {
  String nome = 'Anderson';
  String status = 'aprovado';
  double nota = 10;

  String frase =
      nome + " está " + status + " porque tirou nota " + nota.toString() + "!";
  print(frase);

  String frase2 = "$nome está $status porque tirou nota $nota!";
  print(frase2);
}
