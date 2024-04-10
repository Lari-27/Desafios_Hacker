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
  # Write your code here
  count = 1 #inicia o contado com 1, a primeira palavra começa com letra minuscula. 
  s.each_char do |char| #passa por cada caractere da string 
    count += 1 if char == char.upcase #verifica se o caract atual é uma letra maiuscula, se for incrementa ao contador
  end
        
  return count
end

s = gets.chomp
result = camelcase(s)
puts result

