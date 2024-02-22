# The function accepts following parameters:
#  1. INTEGER x1
#  2. INTEGER v1
#  3. INTEGER x2
#  4. INTEGER v2
#

def kangaroo(x1, v1, x2, v2) #posições iniciais e velocidade dos dois cangurus
    # Write your code here
    #x1 e v1 = posição inicial e distancia do salto para o canguru 1
    #x2 e v2 = posição inicial e distancia do salto para o canguru 2
    return "NO" if x1 > x2 && v1 >= v2 #Verifica se o primeiro canguru começa mais à frente e tem uma velocidade maior ou igual ao segundo canguru. Nesse caso, eles nunca se encontrarão.
    return "NO" if x2 > x1 && v2 >= v1 #verifica a mesma coisa para o segundo canguru
    return "YES" if x1 == x2 && v1 == v2 #Se os cangurus começarem no mesmo ponto e tiverem a mesma velocidade, eles sempre estarão na mesma posição.
    return "NO" if v1 == v2 #Se os cangurus tiverem a mesma velocidade, mas começarem em locais diferentes, nunca irão se encontrar.
    return ((x2 - x1) % (v1 - v2) == 0) ? "YES" : "NO" #Se a diferença inicial entre as posições for divisível pela diferença de velocidade, então os cangurus eventualmente estarão na mesma posição. Se isso for verdadeiro, retorna "YES", caso contrário, retorna "NO".
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

first_multiple_input = gets.rstrip.split

x1 = first_multiple_input[0].to_i

v1 = first_multiple_input[1].to_i

x2 = first_multiple_input[2].to_i

v2 = first_multiple_input[3].to_i

result = kangaroo x1, v1, x2, v2

fptr.write result
fptr.write "\n"

fptr.close()
