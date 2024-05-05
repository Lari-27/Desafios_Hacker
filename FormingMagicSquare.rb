#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'formingMagicSquare' function below.
#
# The function is expected to return an INTEGER.
# The function accepts 2D_INTEGER_ARRAY s as parameter.
#

def formingMagicSquare(s)
    # Write your code here
    magic_squares = [ #Todos os possíveis quadrados mágicos 3x3. Cada quadrado mágico é representado como uma matriz 3x3 dentro de outra lista.
        [[8, 1, 6], [3, 5, 7], [4, 9, 2]],
        [[6, 1, 8], [7, 5, 3], [2, 9, 4]],
        [[4, 9, 2], [3, 5, 7], [8, 1, 6]],
        [[2, 9, 4], [7, 5, 3], [6, 1, 8]],
        [[8, 3, 4], [1, 5, 9], [6, 7, 2]],
        [[4, 3, 8], [9, 5, 1], [2, 7, 6]],
        [[6, 7, 2], [1, 5, 9], [8, 3, 4]],
        [[2, 7, 6], [9, 5, 1], [4, 3, 8]]
    ]
    
    min_cost = Float::INFINITY

    magic_squares.each do |magic_square| # Estamos iterando sobre cada quadrado mágico na lista magic_squares
        cost = 0
        3.times do |i|
            3.times do |j|
                cost += (s[i][j] - magic_square[i][j]).abs
            end
        end
        min_cost = [min_cost, cost].min
    end

    return min_cost
end

s = Array.new(3)

3.times do |i|
    s[i] = gets.rstrip.split.map(&:to_i)
end

result = formingMagicSquare(s)
puts result 

