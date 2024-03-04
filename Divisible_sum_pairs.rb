#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'divisibleSumPairs' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER n
#  2. INTEGER k
#  3. INTEGER_ARRAY ar
#

def divisibleSumPairs(n, k, ar) # n- comprimento da matriz, k- divisor inteiro, ar- matriz de inteiros
# Write your code here
  count = 0 #contar o número de pares encontrados
  for i in 0..(n-1) #loop para iterar sobre todos os pares de elementos na matriz
    for j in (i+1)..(n-1) 
      if (ar[i] + ar[j]) % k == 0 #, verifica se a soma dos elementos ar[i] e ar[j] é divisível por k. Se for, incrementa a variável count
        count += 1
      end
    end
  end
    return count #retonra o valor com todos os pares
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

first_multiple_input = gets.rstrip.split

n = first_multiple_input[0].to_i

k = first_multiple_input[1].to_i

ar = gets.rstrip.split.map(&:to_i)

result = divisibleSumPairs n, k, ar

fptr.write result
fptr.write "\n"

fptr.close()