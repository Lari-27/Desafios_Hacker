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

def insertionSort2(n, arr) #'n - tamanho da lista' / 'arr - lista a ser classificada'
    # Write your code here
# Começa a iteração a partir do segundo número da lista, pois o primeiro número já está considerado "ordenado". 
#O loop percorre todos os números do segundo ao último.
  for i in 1..n-1
  #Armazena o valor do número atual (arr[i]) em key, 
  # pois este é o número que será inserido na posição correta.
    key = arr[i] 
    j = i - 1 #Inicia j como o índice do número à esquerda de key.
    # enquanto j está dentro dos limites do array, e o número atual (arr[i]) é maior que key
  while j >= 0 && arr[j] > key
    # Move o número atual uma posição para a direita, para abrir espaço para a inserção de key.
    arr[j + 1] = arr[j]
    # Move para o próximo elemento à esquerda.
    j -= 1
  end
  arr[j + 1] = key #insere key na posição correta 
    puts arr.join(' ') #Imprime o array após cada iteração
  end 
end

n = gets.strip.to_i

arr = gets.rstrip.split.map(&:to_i)

insertionSort2 n, arr