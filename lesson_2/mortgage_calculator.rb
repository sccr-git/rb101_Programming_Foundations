def prompt(message)
  puts "=> #{message}"
end

def integer?(input)
  input.to_i.to_s == input
end

def validate_float?(input)
  input.to_f.to_s == input
end

def validate_number?(input)
  integer?(input) || validate_float?(input)
end

prompt("Welcome to the Mortgage Calculator!!!")

loop do
  loan_amount = ''

  loop do
    prompt("Please enter the loan amount:")
    loan_amount = gets.chomp
    if validate_number?(loan_amount)
      break
    else
      prompt("Please enter a valid number")
    end
  end

  interest_rate = ''

  loop do
    prompt("Please enter your Interest rate:")
    interest_rate = gets.chomp
    if validate_number?(interest_rate)
      break
    else
      prompt("Please enter a valid number")
    end
  end

  loan_years = ''

  loop do
    prompt("How many years is your loan?:")
    loan_years = gets.chomp
    if validate_number?(loan_years)
      break
    else
      prompt("Please enter a valid number")
    end
  end

  apr = interest_rate.to_f / 100
  # puts apr

  monthly_int_rate = apr / 12
  # puts monthly_int_rate

  loan_months = loan_years.to_i * 12
  # puts loan_months

  monthly_payment = loan_amount.to_f * (monthly_int_rate / (1 - (1 + monthly_int_rate)**(-loan_months)))

  final_ouput = 
  <<-MSG
  Your loan amount of: $#{loan_amount}
  has an APR of: #{interest_rate}%
  and a monthly payment of: $#{monthly_payment}
  MSG
  
  prompt(final_ouput)

  prompt("Wound you like to run another calculation? (Y for yes)")
  another_calculation = gets.chomp
  break unless another_calculation.downcase.start_with?('y')
end

puts "Thanks for stopping by :)"
