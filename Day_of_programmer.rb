#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'dayOfProgrammer' function below.
#
# The function is expected to return a STRING.
# The function accepts INTEGER year as parameter.
#
def dayOfProgrammer(year)
  if year == 1918 #trata o caso especial de 1918, quando houve uma mudança no calendário devido à transição do calendário juliano para o gregoriano e o 256º dia do ano (dia do programador) foi em 26 de setembro.
    return '26.09.1918'
  elsif (year < 1918 && year % 4 == 0) || (year > 1918 && ((year % 400 == 0) || (year % 4 == 0 && year % 100 != 0))) #verifica se o ano é bissexto de acordo com o calendário juliano ou gregoriano. Para anos anteriores a 1918, é bissexto se for divisível por 4. Para anos posteriores a 1918, é bissexto se for divisível por 400 ou divisível por 4, mas não por 100.
      return "12.09.#{year}" #Se o ano for bissexto, retorna a data do Dia do Programador como 12 de setembro.
  else
      return "13.09.#{year}" #Retorna a data do Dia do Programador como 13 de setembro para anos que não são bissextos.
  end
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

year = gets.strip.to_i

result = dayOfProgrammer year

fptr.write result
fptr.write "\n"

fptr.close()
