import '../model/carro.dart';

main() {
  var carro = Carro(320);

  while (!carro.estaNoLimite()) {
    print('A velocidade Atual é ${carro.acelerar()} km/h.');
  }

  print('Está na velocidade máxima: ${carro.velociadadeAtual} km/h.');
  print('');

  while (!carro.estaParado()) {
    print('A velocidade Atual é ${carro.frear()} km/h.');
  }
  print('Carro parou: ${carro.velociadadeAtual} km/h.');
}
