#!/bin/ruby

require 'json'
require 'stringio'

# Complete the catAndMouse function below.
def catAndMouse(x, y, z) #x e y posição dos gatos, z posição do rato 
    dist_gato_a = (z - x).abs #calcula a distancia absoluta entra a posição do rato e cada gato - x e y
    dist_gato_b = (z - y).abs
    
    #Se a distância do gato A ao rato for menor que a distância do gato B ao rato, então o gato A alcançará o rato primeiro e a função retorna "Cat A"
    if dist_gato_a < dist_gato_b
        return "Cat A"
    #Se for o contrário, o gato B alcançará o rato primeiro e a função retorna "Cat B"
    elsif dist_gato_b < dist_gato_a
        return "Cat B"
    else
    #Se as distâncias forem iguais, os gatos chegarão ao rato ao mesmo tempo e o rato escapará, então a função retorna "Mouse C"
        return "Mouse C"
    end
end

q = gets.to_i

q.times do |q_itr|
    xyz = gets.rstrip.split

    x = xyz[0].to_i
    y = xyz[1].to_i
    z = xyz[2].to_i

    result = catAndMouse x, y, z

    puts result 
end
