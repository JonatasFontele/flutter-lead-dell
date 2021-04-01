//Nesta aula, você estudou como utilizar conceitos de orientação a objetos aplicados na linguagem Dart.
//Entre os tópicos citados, está a criação de classes, objetos, construtores e parâmetros nomeados.
//A partir dos conceitos abordados, crie uma classe que será responsável por efetuar operações
//matemáticas solicitadas pelo usuário (algo como uma calculadora).
//Lembre-se de que você pode criar métodos para cada uma das operações matemáticas
//e que seus métodos podem receber parâmetros nomeados que representem os operandos
//da operação para deixar seu programa mais elegante. Bom desempenho!

import 'dart:io';

class Operacao {
  Operacao({
    this.valor1,
    this.valor2,
  });
  var valor1;
  var valor2;

  void somar(valor1, valor2) {
    print(valor1 + valor2);
  }

  void subtrair(valor1, valor2) {
    print(valor1 - valor2);
  }

  void multiplicar(valor1, valor2) {
    print(valor1 * valor2);
  }

  void dividir(valor1, valor2) {
    print(valor1 / valor2);
  }
}

void main() {
  print('Insira qual o numero da operacao que sera realizada.');
  print('1 - soma');
  print('2 - subtracao');
  print('3 - multiplicacao');
  print('4 - divisao');
  var operacao = stdin.readLineSync();

  print('Insira o primeiro valor.');
  var input1 = stdin.readLineSync();
  int? valor1 = int.tryParse(input1!);

  print('Insira o segundo valor.');
  var input2 = stdin.readLineSync();
  int? valor2 = int.tryParse(input2!);

  switch (operacao) {
    case '1':
      {
        Operacao soma = Operacao();
        soma.somar(valor1, valor2);
      }
      break;

    case '2':
      {
        Operacao subtracao = Operacao();
        subtracao.subtrair(valor1, valor2);
      }
      break;

    case '3':
      {
        Operacao multiplicacao = Operacao();
        multiplicacao.multiplicar(valor1, valor2);
      }
      break;

    case '4':
      {
        Operacao divisao = Operacao();
        divisao.dividir(valor1, valor2);
      }
      break;

    default:
      {
        print(
            'Por favor, insira somente um numero que represente uma das operacoes.');
      }
      break;
  }
}
