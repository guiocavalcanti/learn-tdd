# coding: utf-8

# Estruturas condicionais são formas de modificar o caminho de execução de um
# programa baseado na avaliação de uma expressão para true ou false.
#
# Antes de mostrar as estruturas condicionais do Ruby, gostaria de mostrar um
# método utilizado para imprimir valores na tela. Este método é o puts:

puts 42

# Perceba que ele imprimiu o valor na tela e deu enter. Essa é a função do puts.
# Sempre que quisermos mostrar algum valor, seja no console internativo, seja na
# saída padrão do sistema, podemos utilizar o puts.

# Vamos supor que eu queira modificar o caminho de execução de um programa
# baseado no valor associado a uma variável. Um exemplo mais concreto seria
# imprimir mensagens diferentes na tela, baseado no valor da variável:

result = 42

if a == 42
  puts "Success!"
else
  puts "Fail :("
end

# Qualquer expressão pode fazer parte da condição da estrutura condicional:

if a > 40
  puts "Success!"
end

# Note que o ``else`` do condicional é opcional. Neste caso apenas imprimo uma
# mensagem caso o valor associado a variável a seja maior do que 40.

# Em Ruby, condicionais são expresssões. Isso quer dizer que, ao serem
# avaliadas, elas retornam valores concretos. Isso permit, por exemplo,
# associar para ser o resultado da avaliação de um condicional.

result = if a == 42
           1
         else
           0
         end

# Aqui, se a expressão a == 42 for avaliada como verdadeiro, a variável result
# terá associada a sí o valor 1. Caso seja avaliada como falso, o valor 0.
# Também é comum ver estruturas condicionais escritas da seguinte forma:

puts "Success! :)" if a == 42

# Neste caso, a parte que vem antes do if, só é executada se a condição do if
# for avaliada para verdadeiro.
