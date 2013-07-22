# Até agora aprendemos os métodos e usos de Strings e Número. Outra construção
# básica de diversas linguagens são as listas:
#
# Em Ruby, a principal maneira de definir listas é utilizando colchetes.

list = ["Text", 42, false]  # Os elementos da lista podem ser de qualquer tipo.

# Também podemos adicionar novos ítens a uma lista recém criada utilizando o
# métdodo <<

list << "other"
list # Dá para ver que uma nova string foi adicionada a lista.

# Ao invés de utilizar o símbolo <<, poderíamos ter usado o método #pop

list.push("again")
list

# Também existem maneiras remover ítens da lista. Utilizando o método #pop

list.pop

# Note que o útimo elemento foi removido.

# Podemos acessar os elementos da lista através de números, ou índices:

list[0] # Começando por zero, podemos pegar o primeiro elemento da lista
list[1] # Aqui pegamos o segundo elemento da lista

# Também podemos utilizar número negativos para acessar os últimos ítens:

string_list = ["first", "second", "third"]
string_list[-1] # Aqui pegamos o último elemento
string_list[-2] # Aqui pegamos o penúltimo

# Ainda utilizando colchetes, podemos acessar partes de uma lista:

string_list[0..1] # Assim é possível acessar da posição 0 até a posição 1.

# Caso seja necessário concatenar todos os elementos de uma string para formar
# uma string única, podemos utilizar o método #join

string_list.join

# O método #join aceita um argumento opcional que adiciona um separador entre
# cada elemento:

string_list.join(", ") # Separado por vírgulas
string_list.join("-") # Separado por traços

# Assim como strings, podemos verificar se listas incluem determinados
# elementos:

[1,2,3,4].include?(5) # ateavés do método #include?


# Iterators:
#
# Assim como em outras linguagens, em Ruby temos diferentes formas de varrer os
# ítens de uma lista. Por exemplo, assuma que queremos imprimir todos os
# elementos de uma lista utilizando interpolação de strings. A maneira mais
# simplista seria:

"#{string_list[0]} element" # para imprimir o primeiro elemento
"#{string_list[1]} element" # para o segundo. E assim sucessivamente.

# Através de iterators, podemos fazer este trabalho de uma maneira muito mais
# simples. Podemos chamar o método #each da nossa lista:

string_list.each { |element| "#{element} element"  }

# Note que adicionei um pedaço de código envolvido por chaves depois do método
# #each. Este pedaço de código é chamado de bloco e será executado para cada
# elemento da lista pelo método #each.
#
# O método #each fica encarregado de tribuir o elemento da iteração atual a
# variável ``element`` dentro do bloco. Note que ao executar o código, a string
# interpolada foi impressa 3 vezes.
#
# Outra forma de passar blocos para métodos, é através do ``do`` ... ``end``. O
# mesmo código acima poderia ser escrito da seguinte forma:

string_list.each do |element|
  "#{element} element"
end

# Os blocos são uma parte muito importante da linguagem Ruby e são um dos
# fatores principais da sua expressividade. Nas aulas seguintes nós iremos
# aprender a utilizar todo seu poder.

# Outro iterator que recebe um bloco é o #map, diferente do #each ele é aplicato
# a todos os elementos da lista. Ou seja, uma nova lista é gerada com os valores
# retornados pelo bloco:

[1,2,3,4].map { |i| i**2 } # Aqui aplicamos a operação de potenciação

# Todos os elementos da lista foram elevados ao quadrado. A diferença do #map
# para o #each é que o #map retorna uma nova lista. Por exemplo:

new_list = string_list.map { |el| "#{el} element." }
new_list # nos retorna uma nova lista cujo os elementos aparecem interopolados.

# Utilizando estes métodos em conjunto com os outros que já estudamos, nos dar
# um enorme poder de expressividade. Por exemplo:

string_list.map { |el| "#{el} element" }.join(", ")

# Em uma única linha fizemos uma interpolaçãp para todos os elementos da lista
# e juntamos o resultado em uma string única, com vírgulas separando os
# elementos.

# Para mostrar a potencialidade do iteradores e do método #map, vamos supor que
# temos uma lista de nomes:

name_list = ["Juliet", "James", "Will"]

# Supondo que queremos criar uma nova lista, onde todos os nomes estão em letras
# maíusculas. Com o conhecimento que temos até agora, já sabemos que podemos
# utilizar o método #map em conjunto com o método #upcase:

name_list.map { |el| el.upcase }

# Uma vez que este padrão é bastante comum em programas Ruby, há uma forma muito
# mais sucinta de ter o mesmo resultado:

name_list.map(&:upcase)

# Note que passei como parâmetro o nome do método precedido por ``&:``. Perceba
# que o resultado foi o mesmo. Este mesmo comportamento seria obtido para
# qualquer método do objeto string:

name_list.map(&:reverse)

# Assumindo que o método #map também retorna uma lista, podemos obter ainda mais
# expressividade:

name_list.map(&:reverse).map(&:upcase)
