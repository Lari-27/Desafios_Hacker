#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'insertionSort1' function below.
#
# The function accepts following parameters:
#  1. INTEGER n
#  2. INTEGER_ARRAY arr
#

#explicação: 
# Inserir número na lista ordenada
# Dada uma lista ordenada, com um número não ordenadona na célula mais à direita,
# você pode escrever algum código simples para inserir na
# matriz para que ela permaneça classificada?
# Comece no índice mais à direita. Armazene o valor de arr. 
# Compare isso com cada elemento à esquerda até que um valor menor seja alcançado. 
#insertSort1 possui os seguintes parâmetros:
# n : um número inteiro, o tamanho de arr
# arr : uma matriz de inteiros para classificar
#i é usado para percorrer a lista enquanto estamos inserindo o valor na posição correta


def insertionSort1(n, arr) 
  value = arr[n - 1] 
  i = n - 2 
  while i >= 0 && arr[i] > value
    arr[i + 1] = arr[i] 
      i -= 1
  end
  arr[i + 1] = value
    puts arr.join(' ') 
end

arr = [1, 3, 4, 5, 2]
n = 5
insertionSort1(n, arr)
