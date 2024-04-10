#!/bin/ruby

require 'json'
require 'stringio'


#  A função camelcase deve receber uma string como entrada.
#  A string será uma sequência de palavras no formato CamelCase, onde:
#  A primeira palavra começa com letra minúscula.
#  As palavras subsequentes começam com letra maiúscula.
#  A função deve contar o número de palavras na string e retornar esse número.
#  Para contar o número de palavras, a função deve iterar pelos caracteres da string e identificar cada vez que uma letra maiúscula é encontrada, o que indica o início de uma nova palavra.
#  O código deve retornar o número total de palavras na string 


def camelcase(s)
  count = 1
  s.each_char do |char| 
    count += 1 if char == char.upcase 
  end
        
  return count
end

s = gets.chomp
result = camelcase(s)
puts result

