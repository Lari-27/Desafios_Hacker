#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'birthday' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER_ARRAY s
#  2. INTEGER d
#  3. INTEGER m
#

def birthday(s, d, m) #m = mês de aniversario do Ron, d = dia do nascimento de Ron, 
# Write your code here
  count = 0 #armazena o número de segmentos que atendem aos critérios.
  (0..s.length - m).each do |i| #percorre a lista de números s até o ultimo segmento 
    segment_sum = s[i, m].sum  #calcula a soma dos números no segmento atual
    count += 1 if segment_sum == d #verifica se a soma do segmento é igual ao dia do aniversario de Ron(d).
  end
  return count #retorna o número de maneiras que a barra pode ser dividida. 
end


fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.strip.to_i

s = gets.rstrip.split.map(&:to_i)

first_multiple_input = gets.rstrip.split

d = first_multiple_input[0].to_i

m = first_multiple_input[1].to_i

result = birthday s, d, m

fptr.write result
fptr.write "\n"

fptr.close()
