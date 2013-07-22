# coding: utf-8

# Este é o shell interativo do ruby. Aqui você pode digitar qualquer programa
# em Ruby e executá-lo logo em seguida. Por exemplo:

1

# Note que ao digitar o número 1 e dar enter, o console nos respodeu => 1.
# O que vem depois da flecha, representa o que se obtem ao avaliar a expressão
# digitada. Um exemplo mais complexto:

1 + 1

# Mais uma vez retorna o resultado da execução, ou avaliação, do programa.
#
# Vamos iniciar aprendendo sobre as operações matemáticas mais simples. Aqui
# não tem nada de muito diferente de outras linguagens:
#

1 + 2
2 - 10
3 * 3

# Para realizar operações de potenciação, basta usa o * duas vezes.

2 ** 3

# Note que em Ruby a divisão é inteira. Ao dividir 3 por 2, o resultado é 1:

3 / 2

# Caso quisessemos que a parte fracionaria do número aparecesse, devemos
# utilizar a representação de ponto flutuante:

3.0 / 2

# Podemos utilizar operadores de comparação para verificar igualdades a respeito
# de objetos. Para verificar se dois números são iguais ou diferentes:

1 == 1
1 != 1

# Note que o objeto retornado foi true ou false. Esses objetos representam
# booleanos e podem representar verdadeiro ou falso.
#
# Também existem métodos para comparar se um determinado número é maior do que
# outro:

1 > 1
1 >= 1
1 < 2
1 <= 2

# Outro conceito que faz parte de liguagens de diversos paradigmas é o conceito
# de variável. Variáveis são formas de associar nomes a valores para referências
# posteriores. Vamos supor que eu queria associar o resultado de uma soma a uma
# determinada variável:

a = 30 + 11

# A partir deste momento, sempre que eu fizer referência a variável a, estarei
# operando implicitamente com valor da operação 30 + 1. Eu poderia, por exemplo,
# somar 1 ao valor da variável a:

a + 1

# Isso nos daria 42. Eu poderia inclusive, associar este novo valor a outra
# variável:

result = a + 1

# Consultando o valor da variável resultado:

result
