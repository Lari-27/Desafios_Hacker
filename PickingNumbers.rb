#!/bin/ruby

require 'json'
require 'stringio'

def pickingNumbers(a)
  freq = Hash.new(0) 
  a.each { |num| freq[num] += 1 }
  max_length = 0 
  freq.each_key do |num|
    if freq[num] + freq[num + 1] > max_length
      max_length = freq[num] + freq[num + 1]
    end
end
    return max_length
end


n = gets.strip.to_i
a = gets.rstrip.split.map(&:to_i)
result = pickingNumbers(a)

puts result 
