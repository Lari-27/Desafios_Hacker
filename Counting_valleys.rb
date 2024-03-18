#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'countingValleys' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER steps
#  2. STRING path
#

def countingValleys(steps, path) #número de passos (steps) / sequência de passos (path).
  # Write your code here
  valleys = 0  #número de vales percorridos.
  altitude = 0 #acompanha altitude atual do caminhante.
        
  path.each_char do |step| #itera sobre as sequencias de passos
    if step == 'U' #Verifica se o passo atual é uma subida.
      altitude += 1  #Se o passo atual for uma subida, aumenta altitude em 1.
    elsif step == 'D' #Verifica se o passo atual é uma descida.
      altitude -= 1 #Se o passo atual for uma descida, diminuí a altitude em 1.
    end 
      valleys += 1 if altitude.zero? && step == 'U' 
      # Se a altitude for zero e o último passo for uma subida, significa que o caminhante saiu de um vale
      end
        
    return valleys #retorna o número de vales
end
    

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

steps = gets.strip.to_i

path = gets.chomp

result = countingValleys steps, path

fptr.write result
fptr.write "\n"

fptr.close()
