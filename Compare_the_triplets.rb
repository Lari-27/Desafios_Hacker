#!/bin/ruby

require 'json'
require 'stringio'


def compareTriplets(a, b)
  alice_score = 0
  bob_score = 0

  for i in 0...a.length
    if a[i] > b[i]
      alice_score += 1
    elsif a[i] < b[i]
      bob_score += 1
    end
  end

    return [alice_score, bob_score]
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

a = gets.rstrip.split.map(&:to_i)
b = gets.rstrip.split.map(&:to_i)

result = compareTriplets(a, b)

fptr.write result.join(" ")
fptr.write "\n"

fptr.close()

