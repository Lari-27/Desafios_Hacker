#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'gradingStudents' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts INTEGER_ARRAY grades as parameter.
#

def gradingStudents(grades)
    # Write your code here
    rounded_grades = [] #lista vazia para armazenar as notas arredondadas
    grades.each do |grade| #percorre sobre cada nota, na lista de notas recebidas.
      if grade < 38 #se a nota é maior que 38
        rounded_grades << grade # Se a nota for menor que 38, adiciona a nota sem arredondamento.
      else #Se a nota for maior ou igual a 38 é necessario arredondar
        next_multiple_of_5 = (grade / 5.0).ceil * 5 #calcula o prox mult de 5 da nota, arredonda usando o ceil
        if next_multiple_of_5 - grade < 3 # Verifica se a diferença entre o próximo múltiplo de 5 e a nota original é menor que 3.
          rounded_grades << next_multiple_of_5 # Se for, adiciona o próximo múltiplo de 5 à lista de notas arredondadas.
        else
          rounded_grades << grade # Caso contrário, mantém a nota original e a adiciona à lista.
        end
      end
  end
    return rounded_grades #Retorna a lista de notas arredondadas. 
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

grades_count = gets.strip.to_i

grades = Array.new(grades_count)

grades_count.times do |i|
    grades_item = gets.strip.to_i
    grades[i] = grades_item
end

result = gradingStudents grades

fptr.write result.join "\n"
fptr.write "\n"

fptr.close()