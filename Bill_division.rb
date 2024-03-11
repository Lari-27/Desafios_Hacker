#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'bonAppetit' function below.
#
# The function accepts following parameters:
#  1. INTEGER_ARRAY bill
#  2. INTEGER k
#  3. INTEGER b
#

def bonAppetit(bill, k, b) 
  # Write your code here
  total_bill = bill.sum #calcula o custo total da conta somando todos os itens da lista bill, usando o método sum. 
  anna_portion = (total_bill - bill[k]) / 2 #calcula a parte que Anna deve pagar, excluindovo item que ela não comeu.
  if anna_portion == b #verifica se a parte que Anna deve pagar é igual a quantia que Brian cobrou dela.
    puts "Bon Appetit" #se for igual, significa que a conta foi dividida corretamente e imprimi 'bom appetit'
  else 
    puts b - anna_portion #Se a conta não estiver correta, calcula a diferença entre a quantia que Brian cobrou e a parte que Anna deve pagar, e imprime essa diferença.
  end
end

first_multiple_input = gets.rstrip.split

n = first_multiple_input[0].to_i

k = first_multiple_input[1].to_i

bill = gets.rstrip.split.map(&:to_i)

b = gets.strip.to_i

bonAppetit bill, k, b