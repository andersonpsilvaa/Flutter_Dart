main() {
  var valor = '#';

  for (int i = 0; i < 6; i++) {
    print(valor);
    valor += '#';
  }

  print(' ');

  for (var v = '#'; v != '#######'; v += '#') {
    print(v);
  }
}
