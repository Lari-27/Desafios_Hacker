#!/bin/ruby

#
# Complete the getMoneySpent function below.
#
def getMoneySpent(keyboards, drives, b)
  max_spent = -1
  
  keyboards.each do |keyboard_price|
      drives.each do |drive_price|
          total_price = keyboard_price + drive_price
          if total_price <= b && total_price > max_spent
              max_spent = total_price
          end
      end
  end
  
  return max_spent
end

# Exemplo de uso
budget = 10
keyboards = [3, 1]
drives = [5, 2, 8]

money_spent = getMoneySpent(keyboards, drives, budget)
puts money_spent

