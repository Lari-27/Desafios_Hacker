#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'plusMinus' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

def plusMinus(arr)
    # Write your code here
    positive_count = 0
    negative_count = 0
    zero_count = 0

    arr.each do |num|
        if num > 0
            positive_count += 1
        elsif num < 0
            negative_count += 1
        else
            zero_count += 1
        end
    end
    total_elements = arr.length.to_f
    puts positive_count / total_elements
    puts negative_count / total_elements
    puts zero_count / total_elements
end 

n = gets.strip.to_i

arr = gets.rstrip.split.map(&:to_i)

plusMinus arr
