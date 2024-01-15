# Complete a função solveMeFirst para calcular a soma de dois inteiros.

# Descrição da função
# solveMeFirst possui os seguintes parâmetros:
# int a : o primeiro valor
# int b : o segundo valor

# Retorna
# - int : a soma de a e b

def solveMeFirst (a, b)
  return a + b 
end

val1 = gets.to_i
val2 = gets.to_i
sum = solveMeFirst(val1,val2)
print (sum)