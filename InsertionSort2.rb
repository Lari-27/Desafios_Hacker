#!/bin/ruby
# insertSort2 possui os seguintes parâmetros:
# int n: o comprimento de arr
# int arr[n]: uma matriz de inteiros
# A cada iteração, imprima o array como números inteiros separados por espaço em sua própria linha.
# A primeira linha contém um número inteiro, o tamanho de arr. 
# A próxima linha contém n inteiros separados por espaço arr[i].


require 'json'
require 'stringio'

#
# Complete the 'insertionSort2' function below.
#
# The function accepts following parameters:
#  1. INTEGER n
#  2. INTEGER_ARRAY arr
#

def insertionSort2(n, arr)
  for i in 1..n-1
    key = arr[i] 
    j = i - 1 
  while j >= 0 && arr[j] > key
    arr[j + 1] = arr[j]
    j -= 1
  end
  arr[j + 1] = key 
  end 
  puts arr.join(' ') 
end

arr = [2, 1, 5, 4, 3]
n = 5
insertionSort2(n, arr)
