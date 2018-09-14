#language: pt

Funcionalidade: Realizar divisão

Cenário: Realizar divisão de 2 números inteiros
    Dado que esteja na tela incial da calculadora
    Quando dividir 8 por 4
    Então devo visualizar 2 como resultado

Cenário: Validar erro de uma divisão por 0
    Dado que esteja na tela incial da calculadora
    Quando dividir 5 por 0
    Então devo visualizar a mensagem "Can't divide by 0"