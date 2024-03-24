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
# Inserir elemento na lista ordenada
# Dada uma lista ordenada, com um número não ordenadona na célula mais à direita,
# você pode escrever algum código simples para inserir na
# matriz para que ela permaneça classificada?
# Comece no índice mais à direita. Armazene o valor de arr. 
# Compare isso com cada elemento à esquerda até que um valor menor seja alcançado. 
#insertSort1 possui os seguintes parâmetros:
# n : um número inteiro, o tamanho de arr
# arr : uma matriz de inteiros para classificar
#i é usado para percorrer a lista enquanto estamos inserindo o valor na posição correta


def insertionSort1(n, arr) #'n - tamanho da lista' 'arr- lista a ser classificada'
# Write your code here
  #Armazena o valor do último número da lista não ordenada
  value = arr[n - 1] 
  #começa a comparação do segundo último número
  i = n - 2 
  #loop enquanto ainda houver número à esquerda, e o valor do número atual for maior do que o valor armazenado
  while i >= 0 && arr[i] > value
  #mover o número atual para direita
    arr[i + 1] = arr[i] 
      puts arr.join(' ') #imprime a lista atualizada. (todos os elementos do array em uma unica string)
      i -= 1 #move o próximo número para esquerda 
  end
  arr[i + 1] = value  #insere o valor armazenado na posição correta
    puts arr.join(' ') #imprimi a lista final.
end

n = gets.strip.to_i

arr = gets.rstrip.split.map(&:to_i)

insertionSort1 n, arr
