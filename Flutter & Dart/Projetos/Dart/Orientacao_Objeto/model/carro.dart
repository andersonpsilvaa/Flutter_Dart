class Carro {
  final int velocidadeMaxima;
  int velociadadeAtual = 0;

  Carro([this.velocidadeMaxima = 20]);

  int acelerar() {
    if (velociadadeAtual + 5 >= velocidadeMaxima) {
      velociadadeAtual = velocidadeMaxima;
    } else {
      velociadadeAtual += 5;
    }
    return velociadadeAtual;
  }

  int frear() {
    if (velociadadeAtual - 5 <= 0) {
      velociadadeAtual = 0;
    } else {
      velociadadeAtual -= 5;
    }
    return velociadadeAtual;
  }

  bool estaNoLimite() {
    return velociadadeAtual == velocidadeMaxima;
  }

  bool estaParado() {
    return velociadadeAtual == 0;
  }
}
