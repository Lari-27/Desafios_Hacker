#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'birthdayCakeCandles' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY candles as parameter.
#

def birthdayCakeCandles(candles)
    max_height = candles.max #Encontra a altura máxima das velas na matriz candles
    count_tallest_candles = candles.count(max_height) #conta quantas vezes a altura máxima aparece na matriz
    return count_tallest_candles #retorna a contagem das velas mais altas
    # Write your code here

end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

candles_count = gets.strip.to_i

candles = gets.rstrip.split.map(&:to_i)

result = birthdayCakeCandles candles

fptr.write result
fptr.write "\n"

fptr.close()