#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'pageCount' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER n
#  2. INTEGER p
#

def pageCount(n, p) #  n (o número total de páginas do livro) e p (a página para virar).
  # Write your code here
  from_front = p / 2 #calcula o  num de páginas a virar
  if n.even?  #calcula o número de páginas a virar a partir do final do livro (from_back).
    from_back = (n - p + 1) / 2 
    #Se o número total de páginas n for par, então a lógica é como se a última página fosse par 
    #(impressa em ambos os lados). 
    #Se n for ímpar, então a última página será ímpar. A conta considera essas diferenças.
  else
    from_back = (n - p) / 2 
  end
  [from_front, from_back].min #retorna o número mínimo de viradas necessárias, pois o desafio é minimizar a quantidade de viradas, seja começando do início ou do final do livro.
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.strip.to_i

p = gets.strip.to_i

result = pageCount n, p

fptr.write result
fptr.write "\n"

fptr.close()
