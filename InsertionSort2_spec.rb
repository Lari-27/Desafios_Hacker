require_relative 'InsertionSort2'

RSpec.describe "#insertionSort2" do
  it 'Deve classificar a matriz corretamente' do
    arr = [2, 1, 5, 4, 3]
    expected_output = "1 2 3 4 5\n" # Resultado esperado da função insertion, \n - nova linha
    expect { insertionSort2(arr.length, arr) }.to output(expected_output).to_stdout
  end
end


