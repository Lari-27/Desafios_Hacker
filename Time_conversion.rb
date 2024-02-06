#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'timeConversion' function below.
#
# The function is expected to return a STRING.
# The function accepts STRING s as parameter.
#

def timeConversion(s)
    # Write your code here
    horas, minutos, segundos, periodo = s.scan(/(\d+):(\d+):(\d+)([APMapm]{2})/).flatten

    horas = horas.to_i
    
    if periodo.upcase == "PM" && horas != 12
        horas += 12
    elsif periodo.upcase == "AM" && horas == 12
        horas = 0
    end
    # Formatar as horas, minutos e segundos no formato de 24 horas
    formato_24_horas = format('%02d:%02d:%02d', horas, minutos.to_i, segundos.to_i)

    return formato_24_horas
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

s = gets.chomp

result = timeConversion s

fptr.write result
fptr.write "\n"

fptr.close()
