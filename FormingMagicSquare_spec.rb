# Incluindo o arquivo que contém a implementação da função formingMagicSquare
require_relative 'FormingMagicSquare'

# Definindo o teste
def test_formingMagicSquare()
    # Teste para uma matriz específica
    input = [[5, 3, 4], [1, 5, 8], [6, 4, 2]]
    expected_output = 3
    actual_output = formingMagicSquare(input)
    puts "Teste: #{actual_output == expected_output ? 'Passou' : 'Falhou'}"
end

# Executando o teste
test_formingMagicSquare()


# O código do desafio implementa uma função chamada formingMagicSquare
# que recebe uma matriz 3x3 de inteiros como entrada e retorna o custo mínimo de conversão dessa matriz em um quadrado mágico.
# Um quadrado mágico é uma matriz onde a soma de cada linha, coluna e diagonal é a mesma (constante mágica), 
# e os números são distintos.
