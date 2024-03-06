#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'migratoryBirds' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY arr as parameter.
#

def migratoryBirds(arr) # tipos de pássaros avistados. 
    # Write your code here
  count = Hash.new(0) #armazena a contagem de cada tipo de pássaro. o hash.new(0) serve para que o valor de cada tipo de passaro seja 0
  arr.each do |bird_type|  #itera sobre o array arr, e conta a freq de cada tipo de pássaro. 
    count[bird_type] += 1 #armazena a contagem 
  end
        
  max_frequency = count.values.max #encontra a fraq máxima 
  max_birds = [] #armazena os tipos de passaros com freq max 
  count.each do |bird_type, frequency| 
    max_birds << bird_type if frequency == max_frequency #encontra os tipos de passaro com freq max e armazena no count 
  end

    max_birds.min #retorna o menor id entre os tipos de passaros com freq max. 
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

arr_count = gets.strip.to_i

arr = gets.rstrip.split.map(&:to_i)

result = migratoryBirds arr

fptr.write result
fptr.write "\n"

fptr.close()
