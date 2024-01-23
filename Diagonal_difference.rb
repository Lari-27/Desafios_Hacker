#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'diagonalDifference' function below.
#
# The function is expected to return an INTEGER.
# The function accepts 2D_INTEGER_ARRAY arr as parameter.
#

def diagonalDifference(arr)
    # Write your code here
    n = arr.length

    primary_diagonal_sum = 0
    secondary_diagonal_sum = 0

    for i in 0..n-1
        primary_diagonal_sum += arr[i][i]
        secondary_diagonal_sum += arr[i][n-i-1]
end
    difference = (primary_diagonal_sum - secondary_diagonal_sum).abs

    return difference
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.strip.to_i

arr = Array.new(n)

n.times do |i|
    arr[i] = gets.rstrip.split.map(&:to_i)
end

result = diagonalDifference arr

fptr.write result
fptr.write "\n"

fptr.close()
