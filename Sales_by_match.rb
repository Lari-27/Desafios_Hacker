#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'sockMerchant' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER n
#  2. INTEGER_ARRAY ar
#
def sockMerchant(n, ar) #: n (o número de meias na pilha) e ar (um array representando as cores das meias).
  # Write your code here
  socks_count = {} # dic usado para armazenar o número de ocorrências de cada cor de meia.
  ar.each do |sock| # Percorre a matriz de cores de meia.
    if socks_count[sock]  # Verifica se a cor da meia já está presente no dicionário.
      socks_count[sock] += 1   # Se estiver presente, incrementa o contador de ocorrências dessa cor.
    else
      socks_count[sock] = 1 # Se não estiver presente, inicia o contador de ocorrências dessa cor com 1.
    end
  end
    total_pairs = 0 # Inicia uma variável para contar o número total de pares de meias.

    socks_count.each do |_color, count| # Iteramos sobre cada cor de meia no dicionário.
        # Para cada cor, é adicionado metade do número de ocorrências ao total de pares.
        # Isso porque dois pares de meias são necessários para formar um par completo.
        total_pairs += count / 2
    end

    # Retorna o número total de pares de meias.
    return total_pairs
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.strip.to_i

ar = gets.rstrip.split.map(&:to_i)

result = sockMerchant n, ar

fptr.write result
fptr.write "\n"

fptr.close()
