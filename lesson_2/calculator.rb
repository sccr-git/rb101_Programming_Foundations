Kernel.puts("Please enter your first number")
  first_number = Kernel.gets().chomp.to_i

Kernel.puts("Please enter your second number")
  second_number = Kernel.gets().chomp.to_i


Kernel.puts("What operation would you like to perform? 1) Add, 2) Subtract, 3) Multiply 4) Divide")
  operand = Kernel.gets().chomp

if operand == '1'
  Kernel.puts("The answer is: #{first_number + second_number}") 
elsif operand == '2'
  Kernel.puts("The answer is: #{first_number - second_number}")
elsif operand == '3'
  Kernel.puts("The answer is: #{first_number * second_number}")
else
  Kernel.puts("The answer is: #{first_number.to_f / second_number.to_f}")
end