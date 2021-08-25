def prompt(message)
  puts "=> #{message}"
end

def self.clear
  print "\e[2J\e[f"
end

=begin
def win?(first, second)
  first == :paper && second.includes? == 'rock' ||
    first == 'rock' && second == 'scissors' ||
    first == 'scissors' && second == 'paper'
end
=end

WIN_SCENARIOS = { :paper => ['rock', 'spock'],
              :rock => ['scissors', 'lizard'],
              :scissors => ['paper', 'lizard'],
              :lizard => ['paper', 'spock'],
              :spock => ['rock', 'scissors']
}


=begin
CHOICES = {
  'paper'=> { shorthand: 'p', beats: ['rock', 'spock'] },
  'rock' => { shorthand: 'r', beats: ['scissors', 'lizard'] },
  'scissors' => { shorthand: 's', beats: ['paper', 'lizard'] },
  'lizard' => { shorthand: 'l', beats: ['spock', 'paper'] },
  'spock' => { shorhand: 'sp', beats: ['rock', 'scissors'] }

}

=end

def display_results(player, computer)
  if WIN_SCENARIOS[player.to_sym].include?(computer)(#[player.to_sym].include?(computer)
    ('You win!')
  elsif WIN_SCENARIOS[computer.to_sym].include?(player)
    ('The computer wins!')
  else
    ("It's a tie")
  end
end

VALID_CHOICES = { rock: ['rock', 'r'], 
                  paper:['paper', 'p'], 
                 scissors: ['scissors', 'sc'], 
                 lizard: ['lizard', 'l'], 
                spock: ['spock', 'sp']
              }

#choices_output = CHOICES.keys #{ |k, v| k}
#choices_output_2 = choices_output.join(', ')
#choices_output_3 = CHOICES.select { |_,v| v.values_at(:shorthand) } 
#puts choices_output_4 = CHOICES.values_at('paper', )  
# choices_output_5 = choices_output_4.values

#p choices_output_4 = choices_output_3.map {|k,v| v}

loop do
  player = ''
  loop do
    prompt("Please choose: #{VALID_CHOICES.keys.join(', ')}")
    player = gets.chomp.downcase.strip
    if VALID_CHOICES.select {|_, v| v.include?(player.downcase)}.keys[0].to_s
      break
    else
      prompt("Please enter a valid choice.")
    end
  end

  computer = VALID_CHOICES.keys[0].to_s

  prompt("PLAYER chose: #{player} and the COMPUTER chose: #{computer}")

  puts display_results(player, computer)

  prompt("Would you like to play again? Press: 'y'. To quit press any key.")
  play_again = gets.chomp.downcase
  break unless play_again == 'y'
  self.clear
end

prompt("Thanks for playing! Goodbye.")
