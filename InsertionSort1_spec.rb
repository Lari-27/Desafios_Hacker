# require 'spec_helper'
require_relative 'InsertionSort1' 
RSpec.describe "#insertionSort1" do
  it 'Deve classificar a matriz corretamente' do
    arr = [1, 2, 4, 5, 3]
    expected_output = "1 2 3 4 5\n"
    expect {insertionSort1(arr.length, arr)}.to output(expected_output).to_stdout
  end
end 

