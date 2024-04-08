#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'superReducedString' function below.
#
# The function is expected to return a STRING.
# The function accepts STRING s as parameter.
#
#caracteres adjacentes idênticos são removidos, até que não haja mais pares adjacentes na string, resultando em uma string reduzida. 
#Se a string resultante estiver vazia, retorna "Empty String".

def superReducedString(s) #String s 
    # Write your code here
    stack = [] #array vazio para armazenaar os caracteres da string
    s.each_char do |char| #passa por cada caractere na string s 
    if stack.empty? || stack[-1] != char #Verifica se a lista está vazia, ou, se o caractere atual é diferente do último caractere na lista.
        stack << char #Adiciona o caractere atual à lista se a condição for verdadeira
    else  #Se a condição for falsa, isso significa que o caractere atual é igual ao último caractere na pilha.
        stack.pop #Remove o último caractere da pilha, pois ele corresponde a um par de letras adjacentes.
    end
end       
    if stack.empty? #Verifica se a lista está vazia após o processamento.
        return "Empty String" #Retorna se a lista estiver vazia, o que significa que não há caracteres restantes após a redução.
    else
        return stack.join('') #retorna os caracteres restantes na pilha como uma string, unindo-os em uma única string.
    end
end

# fptr = File.open(ENV['OUTPUT_PATH'], 'w')

# s = gets.chomp
result = superReducedString("AAABCCCDDDEFFFG")
puts result
# fptr.write result
# fptr.write "\n"

# fptr.close()
