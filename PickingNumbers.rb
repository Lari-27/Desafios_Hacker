#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'pickingNumbers' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY a as parameter.
#
# Encontrar a submatriz mais longa dentro de uma matriz de inteiros onde a diferença absoluta entre quaisquer dois elementos seja menor ou igual a 1.

def pickingNumbers(a)
# Write your code here
  freq = Hash.new(0) #armazena a freq de cada elemento 
  a.each { |num| freq[num] += 1 } #Conta a frequência de cada elemento na matriz A e armazena no hash freq.
  max_length = 0  #armazenar o comprimento máximo da submatriz.
  freq.each_key do |num| #Itera sobre cada chave (elemento único) no hash freq

  #Verifica se é possível formar uma submatriz incluindo o elemento atual e seu próximo elemento.
    if freq[num] + freq[num + 1] > max_length
      max_length = freq[num] + freq[num + 1] #Atualiza o valor de max_length se a nova submatriz for maior que o comprimento máximo atual.
    end
end
    
    return max_length
end

n = gets.strip.to_i
a = gets.rstrip.split.map(&:to_i)
result = pickingNumbers(a)

puts result 