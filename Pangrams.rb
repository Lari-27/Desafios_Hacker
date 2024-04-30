#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'pangrams' function below.
#
# The function is expected to return a STRING.
# The function accepts STRING s as parameter.
# verifica se uma determinada string é um pangrama ou não. Um pangrama é uma frase que contém todas as letras do alfabeto.

def pangrams(s)
  alphabet = ('a'..'z').to_a  #Cria um array alphabet com todas as letras do alfabeto em minúsculas.
  s = s.downcase.gsub(/\s+/, '') #Converte a string de entrada para minúsculas usando downcase e remove os espaços em branco usando gsub(/\s+/, '')
#Verifica se todas as letras do alfabeto estão presentes na string s. alphabet.all? verifica se a condição dentro das chaves {} é verdadeira para todos os elementos do array alphabet.
    if alphabet.all? { |letter| s.include?(letter) } 
      return "pangram" #Retorna "pangram" se todas as letras do alfabeto estiverem presentes na string s.
    else
      return "not pangram" #Retorna "not pangram" se alguma letra do alfabeto não estiver presente na string s.
    end
end
# fptr = File.open(ENV['OUTPUT_PATH'], 'w')

s = gets.chomp  

result = pangrams(s)

puts pangrams(s)

