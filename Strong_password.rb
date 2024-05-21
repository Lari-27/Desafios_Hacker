#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'minimumNumber' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER n
#  2. STRING password
#

def minimumNumber(n, password)
    numbers = "0123456789"
    lower_case = "abcdefghijklmnopqrstuvwxyz"
    upper_case = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    special_characters = "!@#$%^&*()-+"
    
    missing_types = 0
    missing_types += 1 unless password.chars.any? { |char| numbers.include?(char) }
    missing_types += 1 unless password.chars.any? { |char| lower_case.include?(char) }
    missing_types += 1 unless password.chars.any? { |char| upper_case.include?(char) }
    missing_types += 1 unless password.chars.any? { |char| special_characters.include?(char) }
    missing_length = [0, 6 - n].max

    [missing_types, missing_length].max
end

n = gets.strip.to_i

password = gets.chomp

answer = minimumNumber(n, password)

# Imprimindo o resultado no terminal
puts answer
