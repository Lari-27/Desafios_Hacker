#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'getTotalX' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER_ARRAY a
#  2. INTEGER_ARRAY b
#

def getTotalX(a, b)
    # Write your code here
    #nt a[n] : uma matriz de inteiros
    #int b[m] : uma matriz de inteiros
    max_a = a.max #encontra o max e o min da matriz A e B
    min_b = b.min

    count = 0 #inicia o contador para o número de inteiros

    (max_a..min_b).each do |num| #verifica cada num entre o max de A e o min de B
        next unless a.all? { |x| num % x == 0 } #verifica se num é divisivel por todos os elementos de a
        next unless b.all? { |x| x % num == 0 } # verificar se todos os elementos de b são divisíveis por num

        count += 1 #se num atender as condições, adiciona ao contador
    end
    
    count
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

first_multiple_input = gets.rstrip.split

n = first_multiple_input[0].to_i

m = first_multiple_input[1].to_i

arr = gets.rstrip.split.map(&:to_i)

brr = gets.rstrip.split.map(&:to_i)

total = getTotalX arr, brr

fptr.write total
fptr.write "\n"

fptr.close()