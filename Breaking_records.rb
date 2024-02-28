#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'breakingRecords' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts INTEGER_ARRAY scores as parameter.
#

def breakingRecords(scores) #lista de pontuação do jogo
    # Write your code here
  min_score = max_score = scores[0]
  min_count = max_count = 0 #num inicia de vez que a Maria quebrou o record (min e max)
    
  scores.each do |score|
    if score < min_score #verifica se a pontuação atual é menor que a pontuação até agora min_score
      min_score = score
      min_count += 1 #se a pontuação for menor, indicamos que Maria quebrou seu recorde min.
    elsif score > max_score #verifica se a pontuação é maior
      max_score = score
      max_count += 1 #se a pontuação for maior, indicamos que Maria quebrou seu record max
    end
  end
  return [max_count, min_count] #retorna o número de vezes que maria quebrou o record min e max. 
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.strip.to_i

scores = gets.rstrip.split.map(&:to_i)

result = breakingRecords scores

fptr.write result.join " "
fptr.write "\n"

fptr.close()