# coding: utf-8

# Nos exemplos anteriores, vocês notaram que eu passava algo do tipo"

"Success! :)" # para o método puts.

# Em Ruby, tudo que é envolto em aspas simples ou aspas duplas são Strings. E
# strings são cadeias de caracteres que representam textos.
#
# Assim como números, strings são objetos. Ainda não apredemos a criar objetos
# mas para esta aula podemos assumir que objetos são entidades que têm métdos.
# Estes métodos permitem manipular as entidades.
#
# Por exemplo, podemos transformar todas as letras de uma string em maíusculas:

"Sucess".upcase # chamando o método #upcase

# Semelhante ao método #upcase, temos o método #reverse.

"Sucess".inverse # ele inverte a ordem da string

# Uma vez que estes métodos retornam uma nova string, é possível encadear a
# chamada dos mesmos:

"Sucess".inverse.upcase # Transformamos em maísculas a string invertida

# Também podemos verificar se um pedaço de texto está incluso em outro

"Arara".include?("Ara") # utilizando o método include.

# Da mesma forma que podemos somar números, podemos "somar" strings. Porém,
# neste caso, nós chamamos esta operação de concatenação:

"The answer is " + "42" # note que o + juntou duas Strings numa só.

# Podemos usar este exemplo para chamar atenção a uma questão importante.

"The answer is " + 42 # se eu quisesse concatenar uma string a um número

# O erro TypeError: no implicit conversion of Fixnum into String seria lançado.
# Este erro quer dizer que o Ruby não sabe como converter um número numa string.
#
# Para resolver este problema, poderíamos chamar o método #to_s em objetos do
# tipo número:

42.to_s

# Note que o console interativo mostrou 42, com aspas, os seja, ele é uma
# string.
#
# Assim, caso seja necessário concatenar uma string a um número devemos fazer:

"The answer is " + 42.to_s

# Isso é legal pois nem sempre sabemos o tipo do valor de uma variável que
# queremos concatenar:

result = 42
"The answer is " + result.to_s

# Fazendo nesta forma, temos certeza que a concatenção funcionará

# Outra forma de concatenar valores é através de interpolação:

"The answer is #{42}"

# Perceba que envolvi o número 42 em jogo da velha e um par de chaves. O que
# está dentro de um par de chaves pode ser qualquer expressão ruby. O
# interpretador irá avaliar, e concatenar o valor a string.
#
# Perceba que, ao usar interpolação de strings, o interpretador do Ruby já
# transforma o expressão passada entre chaves em string. Ou seja, não há
# necessidade de utilizar o método #to_s.

