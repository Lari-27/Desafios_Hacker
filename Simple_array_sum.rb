# Dado um array de inteiros, encontre a soma de seus elementos.
# Descrição da função
# Deve retornar a soma dos elementos do array como um número inteiro.
# simpleArraySum possui os seguintes parâmetros:
# ar : uma matriz de inteiros
# A primeira linha contém um número inteiro,, denotando o tamanho da matriz.
# A segunda linha contéminteiros separados por espaço representando os elementos da matriz.

# Imprima a soma dos elementos do array como um único número inteiro.

#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'simpleArraySum' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY ar as parameter.
#

def simpleArraySum(ar)
    # Write your code here
    soma = 0
    ar.each do |ar|
        soma += ar
end

return soma
end 

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

ar_count = gets.strip.to_i

ar = gets.rstrip.split.map(&:to_i)

result = simpleArraySum ar

fptr.write result
fptr.write "\n"

fptr.close()


