#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'miniMaxSum' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

def miniMaxSum(arr)
    # Write your code here
    sorted_arr = arr.sort #A matriz é ordenada em ordem crescente
        min_sum = sorted_arr[0..3].sum #Calcula a soma mínima excluindo o maior elemento. Pega os quatro primeiros elementos da matriz ordenada e calcula a soma
        max_sum = sorted_arr[1..4].sum #Calcula a soma máxima excluindo o menor elemento. Pega os últimos quatro elementos da matriz ordenada e calcula a soma
        puts "#{min_sum} #{max_sum}" #imprimir o resultado
end

arr = gets.rstrip.split.map(&:to_i)

miniMaxSum arr
