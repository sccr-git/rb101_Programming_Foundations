# at the top of file

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')


def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(number)
  number.to_i.to_s == number
end

prompt(MESSAGES['welcome'])

name = ''

loop do
  name = Kernel.gets().chomp()
  if name.empty?()
    prompt("Make sure to use a valid name.")
  else
    break
  end
end

prompt("Hi #{name}")

loop do
  number1 = ''
  loop do
    prompt("Please enter your first number?")
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt("hmm...that doesn't look like a valid number")
    end
  end

  number2 = ''

  loop do
    prompt("Please enter your second number?")
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt("hmm...that doesn't look like a valid number")
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
        1) Add
        2) Subtract#{' '}
        3) Multiply#{' '}
        4) Divide
  MSG

  prompt(operator_prompt)

  operand = ''
  loop do
    operand = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operand)
      break
    else
      prompt("Must choose 1, 2, 3 or 4")
    end
  end

  result = case operand
           when '1'
             number1.to_i() + number2.to_i()
           when '2'
             number1.to_i() - number2.to_i()
           when '3'
             number1.to_i() * number2.to_i()
           when '4'
             number1.to_f() / number2.to_f()
           end

  def adding_operand_text(op)
    case op
    when '1'
      "Adding the numbers..."
    when '2'
      "Subtracting the numbers..."
    when '3'
      "Multiplying the numbers..."
    when '4'
      "Dividing the numbers..."
    end
  end

  prompt(adding_operand_text(operand))
  prompt("The result is #{result}")

  prompt("Would you like to perform another calculation? ('Y' to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thanks for using the calculator")

