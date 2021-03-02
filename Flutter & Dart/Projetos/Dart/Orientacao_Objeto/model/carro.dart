class Carro {
  final int velocidadeMaxima;
  // Com "_" o atributo não pode ser acessado por outra classe, ficando privado.
  int _velociadadeAtual = 0;

  Carro([this.velocidadeMaxima = 20]);

  int acelerar() {
    if (_velociadadeAtual + 5 >= velocidadeMaxima) {
      _velociadadeAtual = velocidadeMaxima;
    } else {
      _velociadadeAtual += 5;
    }
    return _velociadadeAtual;
  }

  // Permitir a leitura do método em outra classe
  int get velociadadeAtual {
    return this._velociadadeAtual;
  }

  int frear() {
    if (_velociadadeAtual - 5 <= 0) {
      _velociadadeAtual = 0;
    } else {
      _velociadadeAtual -= 5;
    }
    return _velociadadeAtual;
  }

  // Permitir a alteração por outra classe
  void set velocidadeAtual(int novaVelocidade) {
    bool deltaValido = (_velociadadeAtual - novaVelocidade).abs() <= 5;
    if (deltaValido && novaVelocidade >= 0) {
      this._velociadadeAtual = novaVelocidade;
    }
  }

  bool estaNoLimite() {
    return _velociadadeAtual == velocidadeMaxima;
  }

  bool estaParado() {
    return _velociadadeAtual == 0;
  }
}
