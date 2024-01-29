#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'staircase' function below.
#
# The function accepts INTEGER n as parameter.
#

def staircase(n)
    # Write your code here
  for i in 1..n
    spaces = n - i
    print ' ' * spaces
    puts '#' * i
  end
end


n = gets.strip.to_i

staircase n